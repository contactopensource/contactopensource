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

mix ash.codegen create_international_standard_classification_of_occupations_2008
mix ash.migrate
