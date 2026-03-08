#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.VitalSignKit \
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
    --attribute blood-pressure-diastolic-as-mmhg:count \
    --attribute blood-pressure-systolic-as-mmhg:count \
    --attribute body-fat-as-percentage:percent \
    --attribute body-temperature-as-celcius:celcius \
    --attribute cholesterol-hdl-as-mmol-per-litre:count \
    --attribute cholesterol-ldl-as-mmol-per-litre:count \
    --attribute heart-rate-as-beats-per-minute:count \
    --attribute heart-rate-variability:percent \
    --attribute height-as-cm:count \
    --attribute respiratory-rate-as-breaths-per-minute:count \
    --attribute sleep-score-as-percent:percent \
    --attribute total-sleep-time-as-min-per-day:count \
    --attribute vo2-max-as-ml-per-kg-per-minute:count \
    --attribute waist-circumference-as-cm:count \
    --attribute weight-as-kg:count \

mix ash.codegen create_vital_sign_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_vital_sign_kits.exs
touch test/my_app/my_domain/vital_sign_kit.exs

mkdir -p lib/my_app_web/live/vital_sign_kits
touch lib/my_app_web/live/vital_sign_kits/form_live.ex
touch lib/my_app_web/live/vital_sign_kits/index_live.ex
touch lib/my_app_web/live/vital_sign_kits/show_live.ex

mkdir -p test/my_app_web/live/vital_sign_kits
touch test/my_app_web/live/vital_sign_kits/form_test.exs
touch test/my_app_web/live/vital_sign_kits/index_test.exs
touch test/my_app_web/live/vital_sign_kits/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/vital_sign_kits", VitalSignKits.IndexLive
live "/vital_sign_kits/new", VitalSignKits.FormLive, :new
live "/vital_sign_kits/:id", VitalSignKits.ShowLive
live "/vital_sign_kits/:id/edit", VitalSignKits.FormLive, :edit

If there is a parent, then edit file lib/my_app/vital_sign_kit.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/vital_sign_kit.ex
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
