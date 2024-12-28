#!/bin/sh
set -euf

mix phx.gen.html \
    Account Organization organizations \
    --force \
    --no-timestamps \

