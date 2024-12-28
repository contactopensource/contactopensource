#!/bin/sh
set -euf

mix phx.gen.html \
    Access Tenant access_tenants \
    --force \
    --no-timestamps \

