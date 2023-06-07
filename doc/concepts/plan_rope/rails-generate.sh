#!/bin/sh
set -euf

rails generate scaffold plan_smart \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    realistic_id:references \
    optimistic_id:references \
    pessimistic_id:references \
    equilibristic_id:references \

rails generate scaffold plan_item \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references \
    value:value \
