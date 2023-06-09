#!/bin/sh
set -euf

rails generate scaffold \
plan_smart \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    reach_id:references:index \
    impact_id:references:index \
    confidence_id:references:index \
    effort_id:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
    
rails generate scaffold \
plan_smart_item \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references:index \
    value:value \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
