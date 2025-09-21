#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Contact.URIContact \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_uri_contact
mix ash.migrate

