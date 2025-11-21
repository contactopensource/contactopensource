# question


Passenger Name Record (PNR)


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

Main:

  * pnr_record_locator_code: code

  * date_of_reservation: date

  * dates_of_intended_travel: dates

  * name: text

  * other_names_on_pnr: text

  * number_of_travelers_on_pnr: count

  * seat_information: text

  * address: text

  * all_forms_of_payment_information: text

  * billing_address: text

  * contact_telephone_numbers: text

  * all_travel_itinerary_for_specific_pnr: text

  * frequent_flyer_information: text

  * travel_agency: text

  * travel_agent: text

  * code_share_pnr_information: text

  * travel_status_of_passenger: text

  * split_divided_pnr_information: text

  * identifiers_for_free_tickets: text

  * one_way_tickets: text

  * email_address: email_address

  * ticketing_field_information: text

  * atfq_fields: text

  * general_remarks: text

  * ticket_number: text

  * seat_number: text

  * date_of_ticket_issuance: date

  * any_collected_apis_information: text

  * no_show_history: text

  * number_of_bags: count

  * bag_tab_numbers: text

  * go_show_information: text

  * number_of_bags_on_each_segment: text

  * osi_information: text

  * ssi_information: text

  * ssr_information: text

  * voluntary_involuntary_upgrades: text

  * received_from_information: text

  * all_historical_changes_to_the_pnr: text

TSA Additional PNR Requirements:

  * travelers_full_name: text

  * travelers_date_of_birth: text

  * travelers_complete_home_address: text

  * travelers_home_phone_number: text

