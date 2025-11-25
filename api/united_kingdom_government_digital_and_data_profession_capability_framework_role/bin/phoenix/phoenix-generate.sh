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
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        family_id:references:index \
        name:stringNone \
        url:urlNone \
        description_as_markdown:markdownNone \
        level_name:stringNone \
        level_description_as_markdown:markdownNone \
        senior_civil_service_flag:booleanNone \
    --force \
    --no-timestamps \

