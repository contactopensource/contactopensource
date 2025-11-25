#!/bin/sh
set -euf

mix phx.gen.html \
    System SystemProc None \
    --force \
    --no-timestamps \

