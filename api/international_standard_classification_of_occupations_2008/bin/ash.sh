#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.InternationalLaborOrganizationInternationalStandardClassificationOfOccupations2008 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:string \

