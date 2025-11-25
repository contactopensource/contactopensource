#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill None \
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
        name:stringNone \
        url:urlNone \
        description:stringNone \
        level_1_description_as_markdown:markdownNone \
        level_1_description_as_html:htmlNone \
        level_2_description_as_markdown:markdownNone \
        level_2_description_as_html:htmlNone \
        level_3_description_as_markdown:htmlNone \
        level_3_description_as_html:htmlNone \
        level_4_description_as_markdown:htmlNone \
        level_4_description_as_html:htmlNone \
        roles_that_require_this_skill_as_markdown:htmlNone \
        roles_that_require_this_skill_as_html:htmlNone \
    --force \
    --no-timestamps \

