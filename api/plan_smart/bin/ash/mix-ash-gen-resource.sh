#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PlanSmart \
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
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:plan_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:specific_card_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:measurable_card_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:achievable_card_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:relevant_card_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:timely_card_id:MyApp.MyDomain.MyModel \

mix ash.codegen create_plan_smarts
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_plan_smarts.exs
touch test/my_app/my_domain/plan_smart.exs

mkdir -p lib/my_app_web/live/plan_smarts
touch lib/my_app_web/live/plan_smarts/form_live.ex
touch lib/my_app_web/live/plan_smarts/index_live.ex
touch lib/my_app_web/live/plan_smarts/show_live.ex

mkdir -p test/my_app_web/live/plan_smarts
touch test/my_app_web/live/plan_smarts/form_test.exs
touch test/my_app_web/live/plan_smarts/index_test.exs
touch test/my_app_web/live/plan_smarts/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/plan_smarts", PlanSmarts.IndexLive
live "/plan_smarts/new", PlanSmarts.FormLive, :new
live "/plan_smarts/:id", PlanSmarts.ShowLive
live "/plan_smarts/:id/edit", PlanSmarts.FormLive, :edit

If there is a parent, then edit file lib/my_app/plan_smart.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/plan_smart.ex
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
#     index[:sign] \
#     index[:kind] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
