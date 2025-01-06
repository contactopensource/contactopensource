#!/bin/sh
set -euf

mix phx.gen.html \
    Access None None \
    --force \
    --no-timestamps \

