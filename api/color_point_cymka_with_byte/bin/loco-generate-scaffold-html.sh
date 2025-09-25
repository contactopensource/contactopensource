#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_cymka_as_byte \
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
        cyan:byte \
        yellow:byte \
        magenta:byte \
        black:byte \
        alpha:byte \

