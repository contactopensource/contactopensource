#!/bin/sh
set -euf

mix phx.gen.html \
    Codes None None \
        group:string:index \
        code:string:index \
        title:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

