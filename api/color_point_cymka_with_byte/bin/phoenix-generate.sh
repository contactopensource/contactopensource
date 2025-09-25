#!/bin/sh
set -euf

mix phx.gen.html \
    Color Color Point CYMKA With Byte None \
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
        cyan:byteNone \
        yellow:byteNone \
        magenta:byteNone \
        black:byteNone \
        alpha:byteNone \
    --force \
    --no-timestamps \

