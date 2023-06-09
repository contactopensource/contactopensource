#!/bin/sh
set -euf

rails generate scaffold international_standard_classification_of_occupations_isco_2008 \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    group:string:index \
    code:string:index \
    title:string:index \
    definition:text \
