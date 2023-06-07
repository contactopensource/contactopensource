#!/bin/sh
set -euf

rails generate scaffold plan_smart \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    reach_id:references \
    impact_id:references \
    confidence_id:references \
    effort_id:references \
    
rails generate scaffold plan_smart_item \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references \
    value:value \
