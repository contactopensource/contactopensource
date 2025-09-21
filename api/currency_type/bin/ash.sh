#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.CurrencyType \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute name:text \
    --attribute code:text \
    --attribute symbol:text \

mix ash.codegen create_currency_type
mix ash.migrate
