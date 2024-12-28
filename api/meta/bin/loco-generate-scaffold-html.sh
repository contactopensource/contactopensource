#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    meta \
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

