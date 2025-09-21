#!/bin/sh
set -euf

rails generate scaffold \
    country_code_iso_3166_1 \
        alpha_2:string(2):string \
    --force \
    --no-timestamps \

