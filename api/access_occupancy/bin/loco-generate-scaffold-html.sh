#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_occupancy \
        access_tenant_it:access_tenant.id \
        access_agent_id:references \

