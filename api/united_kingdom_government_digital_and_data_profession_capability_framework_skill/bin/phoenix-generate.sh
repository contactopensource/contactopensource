#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill None \
        id:uuid:index \
        sign:string:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        name:stringNone \
        url:urlNone \
        description:stringNone \
        level_1_as_markdown:markdownNone \
        level_1_as_html:htmlNone \
        level_2_as_markdown:markdownNone \
        level_2_as_html:htmlNone \
        level_3_as_markdown:htmlNone \
        level_3_as_html:htmlNone \
        level_4_as_markdown:htmlNone \
        level_4_as_html:htmlNone \
        roles_that_require_this_skill_as_markdown:htmlNone \
        roles_that_require_this_skill_as_html:htmlNone \
    --force \
    --no-timestamps \

