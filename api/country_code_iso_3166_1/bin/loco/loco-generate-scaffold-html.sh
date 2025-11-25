#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    country_code_iso_3166_1 \
        alpha_2:string(2):"string{2}" \

