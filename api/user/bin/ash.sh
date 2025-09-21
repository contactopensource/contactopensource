#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.User \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_user
mix ash.migrate

