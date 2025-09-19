#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.SubcountryCodeIso3166Dash2 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \
    --attribute country_code_iso_3166_1_id:references \

