#!/bin/sh
set -euf

mix phx.gen.html \
    Account Organization None \
    --force \
    --no-timestamps \

