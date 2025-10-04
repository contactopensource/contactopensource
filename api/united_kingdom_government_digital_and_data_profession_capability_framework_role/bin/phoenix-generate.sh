#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        family_id:united_kingdom_government_digital_and_data_profession_capability_framework_role_family.id:index \
        name:stringNone \
        url:urlNone \
        description_as_markdown:markdownNone \
        level_name:stringNone \
        level_description_as_markdown:markdownNone \
        senior_civil_service_flag:booleanNone \
    --force \
    --no-timestamps \

