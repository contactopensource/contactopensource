#!/bin/sh
set -euf

mix phx.gen.html \
    None SubcountryCodeIso3166Dash2 None \
        alpha_2:string(2):"string{2}"None \
        country_code_iso_3166_1_id:referencesNone \
    --force \
    --no-timestamps \

