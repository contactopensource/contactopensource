#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_occupancy \
        access_tenant_id:references \
        access_agent_id:references \

