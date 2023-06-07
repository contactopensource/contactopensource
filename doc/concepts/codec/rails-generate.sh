#!/bin/sh
set -euf

rails generate scaffold codec \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    code:string:index \
    icon:text \
    link:text \
    note:text \
    creator_name:string:index \
    prefer_file_extension:string \
    prefer_media_type_id:references \
    lossy_flag:boolean \
    floss_flag:boolean \
    fixed_bit_rate:decimal \
    variable_bit_rate_minimum:decimal \
    variable_bit_rate_maximum:decimal \
    fixed_channel_count:integer \
    variable_channel_count_minimum:integer \
    variable_channel_count_maximum:integer \
