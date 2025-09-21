#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessTenant \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_access_tenant
mix ash.migrate

