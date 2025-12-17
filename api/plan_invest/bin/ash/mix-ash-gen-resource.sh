#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Plan.PlanInvest \
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
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --relationship belongs_to:plan_id:MyApp.MyDomain.MyModel \
    --attribute independent_as_markdown:string \
    --attribute negotiable_as_markdown:string \
    --attribute valuable_as_markdown:string \
    --attribute estimable_as_markdown:string \
    --attribute small_as_markdown:string \
    --attribute testable_as_markdown:string \

mix ash.codegen create_plan_invests
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_plan_invests.exs
touch test/my_app/my_domain/plan_invest.exs

mkdir -p lib/my_app_web/live/plan_invests
touch lib/my_app_web/live/plan_invests/form_live.ex
touch lib/my_app_web/live/plan_invests/index_live.ex
touch lib/my_app_web/live/plan_invests/show_live.ex

mkdir -p test/my_app_web/live/plan_invests
touch test/my_app_web/live/plan_invests/form_test.exs
touch test/my_app_web/live/plan_invests/index_test.exs
touch test/my_app_web/live/plan_invests/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/plan_invests", PlanInvests.IndexLive
live "/plan_invests/new", PlanInvests.FormLive, :new
live "/plan_invests/:id", PlanInvests.ShowLive
live "/plan_invests/:id/edit", PlanInvests.FormLive, :edit

If there is a parent, then edit file lib/my_app/plan_invest.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/plan/plan_invest.ex
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
