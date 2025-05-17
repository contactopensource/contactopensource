#!/bin/sh
set -euf

mix phx.gen.html \
    Access AccessTenant None \
    --force \
    --no-timestamps \

