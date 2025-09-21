#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Account.Organization \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_organization
mix ash.migrate

