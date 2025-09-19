#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.CountryCodeIso3166Dash1 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \

