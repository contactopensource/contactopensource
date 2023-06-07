#!/bin/sh
set -euf

rails generate scaffold \
phone_contact \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
	freeform:string:index \
	label:string:index \
    e164_text:"string{15}":index \
    e164_country_code:"string{3}":index \
    e164_national_destination_code:"string{13}":index \
    e164_group_identification_code:"string{4}":index \
    e164_trial_identification_code:"string{3}" \
    e164_subscriber_number:"string{14}" \
