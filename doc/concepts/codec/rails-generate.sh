#!/bin/sh
set -euf

bit_rate="decimal"
channel_count="integer"

rails generate scaffold \
codec \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    code:string:index \
    icon:text \
    link:text \
    note:text \
    creator_name:string:index \
    prefer_file_extension:string \
    prefer_media_type_id:references:index \
    lossy_flag:boolean \
    floss_flag:boolean \
    fixed_bit_rate:"$bit_rate" \
    variable_bit_rate_minimum:"$bit_rate" \
    variable_bit_rate_maximum:"$bit_rate" \
    fixed_channel_count:"$channel_count" \
    variable_channel_count_minimum:"$channel_count" \
    variable_channel_count_maximum:"$channel_count" \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
