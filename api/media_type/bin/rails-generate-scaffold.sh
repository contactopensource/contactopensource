#!/bin/sh
set -euf

rails generate scaffold \
    media_type \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:text \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        text:string \
        supertype:string \
        subtype:string \
        tree:string \
        suffix:string \
        parameters:string[] \
    --force \
    --no-timestamps \

