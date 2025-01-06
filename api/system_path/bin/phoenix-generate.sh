#!/bin/sh
set -euf

mix phx.gen.html \
    System SystemPath None \
    --force \
    --no-timestamps \

