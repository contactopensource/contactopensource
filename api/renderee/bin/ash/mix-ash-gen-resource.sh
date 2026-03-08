#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Renderee \
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
    --relationship belongs_to:renderer_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:input_media_type_id:MyApp.MyDomain.MyModel \
    --attribute input_as_json:text \
    --attribute input_as_text:text \
    --attribute input_as_url:text \
    --relationship belongs_to:output_media_type_id:MyApp.MyDomain.MyModel \
    --attribute output_as_json:text \
    --attribute output_as_text:text \
    --attribute output_as_url:text \

mix ash.codegen create_renderees
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_renderees.exs
touch test/my_app/my_domain/renderee.exs

mkdir -p lib/my_app_web/live/renderees
touch lib/my_app_web/live/renderees/form_live.ex
touch lib/my_app_web/live/renderees/index_live.ex
touch lib/my_app_web/live/renderees/show_live.ex

mkdir -p test/my_app_web/live/renderees
touch test/my_app_web/live/renderees/form_test.exs
touch test/my_app_web/live/renderees/index_test.exs
touch test/my_app_web/live/renderees/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/renderees", Renderees.IndexLive
live "/renderees/new", Renderees.FormLive, :new
live "/renderees/:id", Renderees.ShowLive
live "/renderees/:id/edit", Renderees.FormLive, :edit

If there is a parent, then edit file lib/my_app/renderee.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/renderee.ex
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
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
