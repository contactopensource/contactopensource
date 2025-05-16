#!/bin/sh
set -euf

rails generate scaffold \
    access_occupancy \
        access_tenant_id:access_tenant.idNone \
        access_agent_id:access_agent.idNone \
    --force \
    --no-timestamps \

