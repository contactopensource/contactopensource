#!/bin/sh
set -euf

mix phx.gen.html \
    Contact None None \
    --force \
    --no-timestamps \

