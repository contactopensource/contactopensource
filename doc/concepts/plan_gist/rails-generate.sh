#!/bin/sh
set -euf

rails generate scaffold plan_smart \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    goal_id:references \
    idea_id:references \
    step_id:references \
    task_id:references \
    
rails generate scaffold plan_smart_item \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    summary:string:index \
    description:text \
    unit_id:references \
    value:value \
