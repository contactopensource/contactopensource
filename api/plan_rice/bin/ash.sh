#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.plan_rices \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
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
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \
    --attribute plan_id:plan.id \
    --attribute score:number \
    --attribute reach_card_id:card.id \
    --attribute reach_value:number \
    --attribute impact_card_id:card.id \
    --attribute impact_value:number \
    --attribute confidence_card_id:card.id \
    --attribute confidence_value:number \
    --attribute effort_card_id:card.id \
    --attribute effort_value:number \

mix ash.codegen create_plan_rices
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_plan_rices.exs

mkdir -p lib/my_app_web/live/plan_rices
touch lib/my_app_web/live/plan_rices/form_live.ex
touch lib/my_app_web/live/plan_rices/index_live.ex
touch lib/my_app_web/live/plan_rices/show_live.ex

mkdir -p test/my_app_web/live/plan_rices
touch test/my_app_web/live/plan_rices/form_live.ex
touch test/my_app_web/live/plan_rices/index_live.ex
touch test/my_app_web/live/plan_rices/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/plan_rices", PlanRices.IndexLive
live "/plan_rices/new", PlanRices.FormLive, :new
live "/plan_rices/:id", PlanRices.ShowLive
live "/plan_rices/:id/edit", PlanRices.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/plan_rice.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
