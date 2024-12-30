#!/bin/sh
set -euf

mix phx.gen.html \
    TODO None None \
    --force \
    --no-timestamps \

