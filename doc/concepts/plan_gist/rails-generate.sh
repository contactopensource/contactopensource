#!/bin/sh
set -euf

rails generate scaffold 
plan_gist \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    goal_id:references:index \
    idea_id:references:index \
    step_id:references:index \
    task_id:references:index \
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
