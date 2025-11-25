#!/bin/sh
set -euf

rails generate scaffold \
    access_occupancy \
        access_tenant_id:references \
        access_agent_id:references \
    --force \
    --no-timestamps \

