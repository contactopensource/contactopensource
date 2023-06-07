#!/bin/sh
set -euf

rails generate scaffold \
email_contact \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
	address:text:index \
    display_name:text:index \
    local_part:text:index \
    domain:text:index \
    addr_spec:text:index \
