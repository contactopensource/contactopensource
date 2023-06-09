#!/bin/sh
set -euf

rails generate scaffold \
plan_smart \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    realistic_id:references:index \
    optimistic_id:references:index \
    pessimistic_id:references:index \
    equilibristic_id:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
plan_item \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references:index \
    value:value \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
