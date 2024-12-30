#!/bin/sh
set -euf

cargo loco generate scaffold \
    uri_contact \
    --force \
    --no-timestamps \

