#!/bin/sh
set -euf

rails generate scaffold
plan_okr \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    objective_id:references:index \
    key_result_0_id:references:index \
    key_result_1_id:references:index \
    key_result_2_id:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
