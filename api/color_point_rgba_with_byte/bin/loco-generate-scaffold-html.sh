#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_rgba_with_byte \
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
        red:byte \
        green:byte \
        blue:byte \
        alpha:byte \

