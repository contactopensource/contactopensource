#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.TODO.PassengerNameRecord \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute pnr_record_locator_code:code \
    --attribute date_of_reservation:date \
    --attribute dates_of_intended_travel:dates \
    --attribute name:text \
    --attribute other_names_on_pnr:text \
    --attribute number_of_travelers_on_pnr:count \
    --attribute seat_information:text \
    --attribute address:text \
    --attribute all_forms_of_payment_information:text \
    --attribute billing_address:text \
    --attribute contact_telephone_numbers:text \
    --attribute all_travel_itinerary_for_specific_pnr:text \
    --attribute frequent_flyer_information:text \
    --attribute travel_agency:text \
    --attribute travel_agent:text \
    --attribute code_share_pnr_information:text \
    --attribute travel_status_of_passenger:text \
    --attribute split_divided_pnr_information:text \
    --attribute identifiers_for_free_tickets:text \
    --attribute one_way_tickets:text \
    --attribute email_address:email_address \
    --attribute ticketing_field_information:text \
    --attribute atfq_fields:text \
    --attribute general_remarks:text \
    --attribute ticket_number:text \
    --attribute seat_number:text \
    --attribute date_of_ticket_issuance:date \
    --attribute any_collected_apis_information:text \
    --attribute no_show_history:text \
    --attribute number_of_bags:count \
    --attribute bag_tab_numbers:text \
    --attribute go_show_information:text \
    --attribute number_of_bags_on_each_segment:text \
    --attribute osi_information:text \
    --attribute ssi_information:text \
    --attribute ssr_information:text \
    --attribute voluntary_involuntary_upgrades:text \
    --attribute received_from_information:text \
    --attribute all_historical_changes_to_the_pnr:text \
    --attribute travelers_full_name:text \
    --attribute travelers_date_of_birth:text \
    --attribute travelers_complete_home_address:text \
    --attribute travelers_home_phone_number:text \

mix ash.codegen create_passenger_name_records
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_passenger_name_records.exs
touch test/my_app/my_domain/passenger_name_record.exs

mkdir -p lib/my_app_web/live/passenger_name_records
touch lib/my_app_web/live/passenger_name_records/form_live.ex
touch lib/my_app_web/live/passenger_name_records/index_live.ex
touch lib/my_app_web/live/passenger_name_records/show_live.ex

mkdir -p test/my_app_web/live/passenger_name_records
touch test/my_app_web/live/passenger_name_records/form_test.exs
touch test/my_app_web/live/passenger_name_records/index_test.exs
touch test/my_app_web/live/passenger_name_records/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/passenger_name_records", PassengerNameRecords.IndexLive
live "/passenger_name_records/new", PassengerNameRecords.FormLive, :new
live "/passenger_name_records/:id", PassengerNameRecords.ShowLive
live "/passenger_name_records/:id/edit", PassengerNameRecords.FormLive, :edit

If there is a parent, then edit file lib/my_app/passenger_name_record.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/todo/passenger_name_record.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
