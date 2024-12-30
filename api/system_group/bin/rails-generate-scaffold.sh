#!/bin/sh
set -euf

cargo loco generate scaffold \
    system_group \
    --force \
    --no-timestamps \

