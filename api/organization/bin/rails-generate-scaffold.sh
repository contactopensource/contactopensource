#!/bin/sh
set -euf

cargo loco generate scaffold \
    organization \
    --force \
    --no-timestamps \

