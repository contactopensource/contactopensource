#!/bin/sh
set -euf

mix phx.gen.html \
    None CountryCodeIso3166Dash1 None \
        alpha_2:string(2):"string{2}"None \
    --force \
    --no-timestamps \

