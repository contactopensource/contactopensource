#!/bin/sh
set -euf

uri="string"
database="string"
schema="string"
table="string"
unit_interval="float"
dual_interval="float"

rails generate scaffold \
edge \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    subject_uri:"$uri":index \
    subject_database:"$database":index \
    subject_schema:"$schema":index \
    subject_table:"$table":index \
    subject_id:references:index \
    predicate_uri:"$uri":index \
    predicate_database:"$database":index \
    predicate_schema:"$schema":index \
    predicate_table:"$table":index \
    predicate_id:references:index \
    object_uri:"$uri":index \
    object_database:"$database":index \
    object_schema:"$schema":index \
    object_table:"$table":index \
    object_id:references:index \
    start_at_timestamp_utc:timestamp \
    stop_at_timestamp_utc:timestamp \
    count:integer \
    weight:decimal \
    probability:"$unit_interval" \
    confidence:"$unit_interval" \
    multiplier_unit_interval:"$unit_interval" \
    multiplier_dual_interval:"$dual_interval" \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
