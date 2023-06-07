#!/bin/sh
set -euf

rails generate scaffold \
postal_contact \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    freeform:string:index \
	country:references \
	country_subdivision:references \
	locality:references \
	locality_subdivision:references \
    postal_code:references \
    street_address_text:string \
    premise_address_text:string \
    global_location_number_text:string:index \
