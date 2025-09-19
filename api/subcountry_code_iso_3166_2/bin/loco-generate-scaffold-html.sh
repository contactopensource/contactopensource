#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    subcountry_code_iso_3166_2 \
        alpha_2:string(2):string \
        country_code_iso_3166_1_id:references \

