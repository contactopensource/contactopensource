#!/bin/sh
set -euf

mix phx.gen.html \
    System SystemGroup None \
    --force \
    --no-timestamps \

