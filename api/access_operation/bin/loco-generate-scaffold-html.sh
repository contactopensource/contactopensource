#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_operation \
        id:bigint NOT NULL \
        zid:uuid NOT NULL \
        lock_version:int NOT NULL \
        created_at:timestamp NOT NULL \
        created_by:url NOT NULL \
        updated_at:timestamp NOT NULL \
        updated_by:url NOT NULL \
        retired_at:timestamp NOT NULL \
        retired_by:url NOT NULL \
        locale_id:references NOT NULL \
        title:"string{50}" NOT NULL \
        subtitle:"string{50}" NOT NULL \
        summary:string NOT NULL \
        description:text NOT NULL \
        disambiguation:text NOT NULL \
        image_1024x1024_url:url NOT NULL \
        image_1024x1024_alt:text NOT NULL \
        emoji:text NOT NULL \
        star_count:integer NOT NULL \
        key:string NOT NULL \

