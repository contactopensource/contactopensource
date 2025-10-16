#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.currency_types \
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
    --attribute name:text \
    --attribute code:text \
    --attribute symbol:text \

mix ash.codegen create_currency_types
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_currency_types.exs

mkdir -p lib/my_app_web/live/currency_types
touch lib/my_app_web/live/currency_types/form_live.ex
touch lib/my_app_web/live/currency_types/index_live.ex
touch lib/my_app_web/live/currency_types/show_live.ex

mkdir -p test/my_app_web/live/currency_types
touch test/my_app_web/live/currency_types/form_live.ex
touch test/my_app_web/live/currency_types/index_live.ex
touch test/my_app_web/live/currency_types/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/currency_types", CurrencyTypes.IndexLive
live "/currency_types/new", CurrencyTypes.FormLive, :new
live "/currency_types/:id", CurrencyTypes.ShowLive
live "/currency_types/:id/edit", CurrencyTypes.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/currency_type.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
