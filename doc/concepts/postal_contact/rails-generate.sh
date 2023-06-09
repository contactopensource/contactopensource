#!/bin/sh
set -euf

rails generate scaffold \
postal_contact \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    freeform:string:index \
	country:references:index \
	country_subdivision:references:index \
	locality:references:index \
	locality_subdivision:references:index \
    postal_code:references:index \
    street_address_text:string \
    premise_address_text:string \
    global_location_number_text:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
