#!/bin/sh
set -euf

cargo loco generate scaffold \
    system_user \
    --force \
    --no-timestamps \

