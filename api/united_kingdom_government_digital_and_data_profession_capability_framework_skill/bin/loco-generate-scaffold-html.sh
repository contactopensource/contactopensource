#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_government_digital_and_data_profession_capability_framework_skill \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        name:string \
        url:url \
        description:string \
        level_1_as_markdown:markdown \
        level_1_as_html:html \
        level_2_as_markdown:markdown \
        level_2_as_html:html \
        level_3_as_markdown:html \
        level_3_as_html:html \
        level_4_as_markdown:html \
        level_4_as_html:html \
        roles_that_require_this_skill_as_markdown:html \
        roles_that_require_this_skill_as_html:html \

