#!/bin/sh
set -euf

mix phx.gen.html \
    System SystamUser None \
    --force \
    --no-timestamps \

