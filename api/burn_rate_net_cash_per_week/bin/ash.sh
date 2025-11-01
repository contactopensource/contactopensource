#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.BurnRateNetCashPerWeek \
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
    --attribute actual:numeric \
    --attribute target:numeric \
    --attribute ratio:numeric \
    --attribute unit:string \
    --attribute description:string \

mix ash.codegen create_burn_rate_net_cash_per_weeks
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_burn_rate_net_cash_per_weeks.exs

mkdir -p lib/my_app_web/live/burn_rate_net_cash_per_weeks
touch lib/my_app_web/live/burn_rate_net_cash_per_weeks/form_live.ex
touch lib/my_app_web/live/burn_rate_net_cash_per_weeks/index_live.ex
touch lib/my_app_web/live/burn_rate_net_cash_per_weeks/show_live.ex

mkdir -p test/my_app_web/live/burn_rate_net_cash_per_weeks
touch test/my_app_web/live/burn_rate_net_cash_per_weeks/form_live.ex
touch test/my_app_web/live/burn_rate_net_cash_per_weeks/index_live.ex
touch test/my_app_web/live/burn_rate_net_cash_per_weeks/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/burn_rate_net_cash_per_weeks", BurnRateNetCashPerWeeks.IndexLive
live "/burn_rate_net_cash_per_weeks/new", BurnRateNetCashPerWeeks.FormLive, :new
live "/burn_rate_net_cash_per_weeks/:id", BurnRateNetCashPerWeeks.ShowLive
live "/burn_rate_net_cash_per_weeks/:id/edit", BurnRateNetCashPerWeeks.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/burn_rate_net_cash_per_week.ex
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
