#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill None \
    --force \
    --no-timestamps \

