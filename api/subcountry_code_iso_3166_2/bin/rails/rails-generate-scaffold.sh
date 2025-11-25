#!/bin/sh
set -euf

rails generate scaffold \
    subcountry_code_iso_3166_2 \
        alpha_2:string(2):"string{2}" \
        country_code_iso_3166_1_id:references \
    --force \
    --no-timestamps \

