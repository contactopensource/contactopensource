#!/bin/sh
set -euf

mix phx.gen.html \
    Contact URIContact None \
    --force \
    --no-timestamps \

