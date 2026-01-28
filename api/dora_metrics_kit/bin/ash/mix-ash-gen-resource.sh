#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.DoraMetricsKit \
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
    --attribute deployment_frequency_actual:numeric \
    --attribute deployment_frequency_target:numeric \
    --attribute deployment_frequency_ratio:numeric \
    --attribute deployment_frequency_unit:text \
    --attribute deployment_frequency_description:text \
    --attribute mean_lead_time_for_changes_actual:numeric \
    --attribute mean_lead_time_for_changes_target:numeric \
    --attribute mean_lead_time_for_changes_ratio:numeric \
    --attribute mean_lead_time_for_changes_unit:text \
    --attribute mean_lead_time_for_changes_description:text \
    --attribute change_failure_rate_actual:numeric \
    --attribute change_failure_rate_target:numeric \
    --attribute change_failure_rate_ratio:numeric \
    --attribute change_failure_rate_unit:text \
    --attribute change_failure_rate_description:text \
    --attribute failed_deployment_recovery_time_actual:numeric \
    --attribute failed_deployment_recovery_time_target:numeric \
    --attribute failed_deployment_recovery_time_ratio:numeric \
    --attribute failed_deployment_recovery_time_unit:text \
    --attribute failed_deployment_recovery_time_description:text \
    --attribute reliability_probability_actual:numeric \
    --attribute reliability_probability_target:numeric \
    --attribute reliability_probability_ratio:numeric \
    --attribute reliability_probability_unit:text \
    --attribute reliability_probability_description:text \

mix ash.codegen create_dora_metrics_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_dora_metrics_kits.exs
touch test/my_app/my_domain/dora_metrics_kit.exs

mkdir -p lib/my_app_web/live/dora_metrics_kits
touch lib/my_app_web/live/dora_metrics_kits/form_live.ex
touch lib/my_app_web/live/dora_metrics_kits/index_live.ex
touch lib/my_app_web/live/dora_metrics_kits/show_live.ex

mkdir -p test/my_app_web/live/dora_metrics_kits
touch test/my_app_web/live/dora_metrics_kits/form_test.exs
touch test/my_app_web/live/dora_metrics_kits/index_test.exs
touch test/my_app_web/live/dora_metrics_kits/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/dora_metrics_kits", DoraMetricsKits.IndexLive
live "/dora_metrics_kits/new", DoraMetricsKits.FormLive, :new
live "/dora_metrics_kits/:id", DoraMetricsKits.ShowLive
live "/dora_metrics_kits/:id/edit", DoraMetricsKits.FormLive, :edit

If there is a parent, then edit file lib/my_app/dora_metrics_kit.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/dora_metrics_kit.ex
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
