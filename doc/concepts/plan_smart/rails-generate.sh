#!/bin/sh
set -euf

rails generate scaffold plan_smart \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    specific_id:references \
    measurable_id:references \
    actionable_id:references \
    relevant_id:references \
    timely_id:references \

rails generate scaffold plan_item \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references \
    value:value \