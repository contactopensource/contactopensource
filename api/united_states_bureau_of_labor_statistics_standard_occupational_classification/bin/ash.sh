#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute group:string \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:text \

