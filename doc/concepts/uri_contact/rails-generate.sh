#!/bin/sh
set -euf

rails generate scaffold \
uri_contact \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
	uri:text:index \
	label:text:index \
    download_filename:text \
    locale:references \
    media_type:references \
