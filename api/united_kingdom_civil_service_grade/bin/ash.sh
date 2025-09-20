#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomCivilServiceGrade \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute step:integer \
    --attribute label:string \
    --attribute abbreviation:string \
    --attribute minimum_salary:integer \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_civil_service_grade
mix ash.migrate
