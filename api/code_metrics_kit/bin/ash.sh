#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.CodeMetricsKit \
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
    --attribute maintainability_index_actual:numeric \
    --attribute maintainability_index_target:numeric \
    --attribute maintainability_index_ratio:numeric \
    --attribute maintainability_index_unit:string \
    --attribute maintainability_index_description:string \
    --attribute line_count_actual:numeric \
    --attribute line_count_target:numeric \
    --attribute line_count_ratio:numeric \
    --attribute line_count_unit:string \
    --attribute line_count_description:string \
    --attribute test_automation_code_coverage_actual:numeric \
    --attribute test_automation_code_coverage_target:numeric \
    --attribute test_automation_code_coverage_ratio:numeric \
    --attribute test_automation_code_coverage_unit:string \
    --attribute test_automation_code_coverage_description:string \

mix ash.codegen create_code_metrics_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_code_metrics_kits.exs

mkdir -p lib/my_app_web/live/code_metrics_kits
touch lib/my_app_web/live/code_metrics_kits/form_live.ex
touch lib/my_app_web/live/code_metrics_kits/index_live.ex
touch lib/my_app_web/live/code_metrics_kits/show_live.ex

mkdir -p test/my_app_web/live/code_metrics_kits
touch test/my_app_web/live/code_metrics_kits/form_live.ex
touch test/my_app_web/live/code_metrics_kits/index_live.ex
touch test/my_app_web/live/code_metrics_kits/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/code_metrics_kits", CodeMetricsKits.IndexLive
live "/code_metrics_kits/new", CodeMetricsKits.FormLive, :new
live "/code_metrics_kits/:id", CodeMetricsKits.ShowLive
live "/code_metrics_kits/:id/edit", CodeMetricsKits.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/code_metrics_kit.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
