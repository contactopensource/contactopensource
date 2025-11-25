#!/bin/sh
set -euf

mix phx.gen.html \
    System SystemUser None \
    --force \
    --no-timestamps \

