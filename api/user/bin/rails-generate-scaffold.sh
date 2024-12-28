#!/bin/sh
set -euf

cargo loco generate scaffold \
    user \
    --force \
    --no-timestamps \

