#!/bin/sh
set -euf

mix phx.gen.html \
    None User None \
    --force \
    --no-timestamps \

