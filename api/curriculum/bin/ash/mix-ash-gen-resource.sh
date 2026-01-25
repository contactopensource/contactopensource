#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Topics.Curriculum \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute name:string \
    --attribute subname:string \
    --attribute slug:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:text \
    --attribute kind:string \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute purpose_description_as_markdown:markdown \
    --attribute process_description_as_markdown:markdown \
    --attribute evaluation_description_as_markdown:markdown \
    --attribute continuation_description_as_markdown:markdown \

mix ash.codegen create_curriculums
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_curriculums.exs
touch test/my_app/my_domain/curriculum.exs

mkdir -p lib/my_app_web/live/curriculums
touch lib/my_app_web/live/curriculums/form_live.ex
touch lib/my_app_web/live/curriculums/index_live.ex
touch lib/my_app_web/live/curriculums/show_live.ex

mkdir -p test/my_app_web/live/curriculums
touch test/my_app_web/live/curriculums/form_test.exs
touch test/my_app_web/live/curriculums/index_test.exs
touch test/my_app_web/live/curriculums/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/curriculums", Curriculums.IndexLive
live "/curriculums/new", Curriculums.FormLive, :new
live "/curriculums/:id", Curriculums.ShowLive
live "/curriculums/:id/edit", Curriculums.FormLive, :edit

If there is a parent, then edit file lib/my_app/curriculum.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/topics/curriculum.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#     index[:name] \
#     index[:subname] \
#     index[:slug] \
#     index[:sign] \
#     index[:kind] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
