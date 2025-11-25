#!/bin/sh
set -euf

mix phx.gen.html \
    System None None \
    --force \
    --no-timestamps \

