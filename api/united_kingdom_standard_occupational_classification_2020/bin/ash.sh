#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomStandardOccupationalClassification2020 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_standard_occupational_classification_2020
mix ash.migrate
