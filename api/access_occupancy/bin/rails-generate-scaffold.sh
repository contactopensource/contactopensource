#!/bin/sh
set -euf

cargo loco generate scaffold \
    access_occupancy \
        access_tenant_it:access_tenant.idNone \
        access_agent_id:access_agent.idNone \
    --force \
    --no-timestamps \

