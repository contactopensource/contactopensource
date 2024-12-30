#!/bin/sh
set -euf

cargo loco generate scaffold \
    unit \
    --force \
    --no-timestamps \

