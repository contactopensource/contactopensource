#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole None \
    --force \
    --no-timestamps \

