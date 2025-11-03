#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Locale \
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
    --attribute text:text \
    --attribute language_code:text \
    --attribute country_code:text \
    --attribute script_code:text \
    --attribute region_code:text \
    --attribute variant_code:text \
    --attribute decimal_separator:text \
    --attribute grouping_separator:text \
    --attribute currency_name:text \
    --attribute currency_code:text \
    --attribute currency_symbol:text \
    --attribute quotation_start_delimiter:text \
    --attribute quotation_stop_delimiter:text \

mix ash.codegen create_locales
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_locales.exs
touch test/my_app/my_domain/locale.exs

mkdir -p lib/my_app_web/live/locales
touch lib/my_app_web/live/locales/form_live.ex
touch lib/my_app_web/live/locales/index_live.ex
touch lib/my_app_web/live/locales/show_live.ex

mkdir -p test/my_app_web/live/locales
touch test/my_app_web/live/locales/form_test.exs
touch test/my_app_web/live/locales/index_test.exs
touch test/my_app_web/live/locales/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/locales", Locales.IndexLive
live "/locales/new", Locales.FormLive, :new
live "/locales/:id", Locales.ShowLive
live "/locales/:id/edit", Locales.FormLive, :edit

If there is a parent, then edit file lib/my_app/locale.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/locale.ex
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
