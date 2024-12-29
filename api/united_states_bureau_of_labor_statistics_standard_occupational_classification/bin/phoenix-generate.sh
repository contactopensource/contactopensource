#!/bin/sh
set -euf

mix phx.gen.html \
    None None None \
    --force \
    --no-timestamps \

