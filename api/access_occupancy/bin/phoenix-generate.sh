#!/bin/sh
set -euf

mix phx.gen.html \
    Access AccessOccupancy None \
        access_tenant_id:access_tenant.idNone \
        access_agent_id:access_agent.idNone \
    --force \
    --no-timestamps \

