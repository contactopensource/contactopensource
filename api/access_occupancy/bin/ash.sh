#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessOccupancy \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_tenant_id:access_tenant.id \
    --attribute access_agent_id:access_agent.id \

mix ash.codegen create_access_occupancy
mix ash.migrate
