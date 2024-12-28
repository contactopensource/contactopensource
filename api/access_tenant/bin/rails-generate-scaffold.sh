#!/bin/sh
set -euf

cargo loco generate scaffold \
    access_tenant \
    --force \
    --no-timestamps \

