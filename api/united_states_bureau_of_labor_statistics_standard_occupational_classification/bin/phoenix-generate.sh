#!/bin/sh
set -euf

mix phx.gen.html \
    None None None \
        group:string:index \
        code:string:index \
        title:string:index \
        definition:text:index \
    --force \
    --no-timestamps \

