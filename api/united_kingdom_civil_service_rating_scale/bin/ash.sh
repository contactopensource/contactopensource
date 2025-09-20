#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomCivilServiceRatingScale \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute rating:integer \
    --attribute label:string \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_civil_service_rating_scale
mix ash.migrate
