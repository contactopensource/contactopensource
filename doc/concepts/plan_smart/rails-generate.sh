#!/bin/sh
set -euf

rails generate scaffold \
plan_smart \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    specific_id:references:index \
    measurable_id:references:index \
    actionable_id:references:index \
    relevant_id:references:index \
    timely_id:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
plan_item \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    summary:string:index \
    description:text \
    disambiguation:text \
    unit_id:references:index \
    value:value \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
