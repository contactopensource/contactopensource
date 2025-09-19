#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Contact.URIContact \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

