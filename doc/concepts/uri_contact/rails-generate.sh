#!/bin/sh
set -euf

rails generate scaffold \
uri_contact \
	$RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
	uri:text:index \
	label:text:index \
    download_filename:text \
    locale:references:index \
    media_type:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
