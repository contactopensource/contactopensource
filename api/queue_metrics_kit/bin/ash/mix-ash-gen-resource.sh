#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.QueueMetricsKit \
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
    --attribute type:text \
    --attribute queue_arrival_rate_actual:numeric \
    --attribute queue_arrival_rate_target:numeric \
    --attribute queue_arrival_rate_ratio:numeric \
    --attribute queue_service_rate_actual:numeric \
    --attribute queue_service_rate_target:numeric \
    --attribute queue_service_rate_ratio:numeric \
    --attribute queue_dropout_rate_actual:numeric \
    --attribute queue_dropout_rate_target:numeric \
    --attribute queue_dropout_rate_ratio:numeric \
    --attribute queue_utilization_ratio_actual:numeric \
    --attribute queue_utilization_ratio_actual:numeric \
    --attribute queue_utilization_ratio_ratio:numeric \
    --attribute queue_error_ratio_actual:numeric \
    --attribute queue_error_ratio_target:numeric \
    --attribute queue_error_ratio_ratio:numeric \
    --attribute queue_lead_time_actual:numeric \
    --attribute queue_lead_time_target:numeric \
    --attribute queue_lead_time_ratio:numeric \
    --attribute queue_wait_time_actual:numeric \
    --attribute queue_wait_time_target:numeric \
    --attribute queue_wait_time_ratio:numeric \
    --attribute queue_work_time_actual:numeric \
    --attribute queue_work_time_target:numeric \
    --attribute queue_work_time_ratio:numeric \
    --attribute queue_step_time_actual:numeric \
    --attribute queue_step_time_target:numeric \
    --attribute queue_step_time_ratio:numeric \
    --attribute queue_item_count:count \
    --attribute queue_service_error_count:count \
    --attribute queue_arrival_process_probability_distribution_count:text \
    --attribute queue_service_process_probability_distribution_count:text \
    --attribute queue_server_count:count \
    --attribute queue_maximum_active_items_count:count \
    --attribute queue_maximum_total_items_count:count \

mix ash.codegen create_queue_metrics_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_queue_metrics_kits.exs
touch test/my_app/my_domain/queue_metrics_kit.exs

mkdir -p lib/my_app_web/live/queue_metrics_kits
touch lib/my_app_web/live/queue_metrics_kits/form_live.ex
touch lib/my_app_web/live/queue_metrics_kits/index_live.ex
touch lib/my_app_web/live/queue_metrics_kits/show_live.ex

mkdir -p test/my_app_web/live/queue_metrics_kits
touch test/my_app_web/live/queue_metrics_kits/form_test.exs
touch test/my_app_web/live/queue_metrics_kits/index_test.exs
touch test/my_app_web/live/queue_metrics_kits/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/queue_metrics_kits", QueueMetricsKits.IndexLive
live "/queue_metrics_kits/new", QueueMetricsKits.FormLive, :new
live "/queue_metrics_kits/:id", QueueMetricsKits.ShowLive
live "/queue_metrics_kits/:id/edit", QueueMetricsKits.FormLive, :edit

If there is a parent, then edit file lib/my_app/queue_metrics_kit.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/queue_metrics_kit.ex
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
