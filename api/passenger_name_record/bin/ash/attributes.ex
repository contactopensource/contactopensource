
defmodule MyApp.MyDomain.PassengerNameRecord.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :id, :uuid do
      primary_key? true
      description "Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users."
    end

    attribute :lock_version, :integer do
      description "This is for optimistic locking."
    end

    attribute :created_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :created_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :updated_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :updated_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :retired_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :retired_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :locale_code, :string do
      description "An international locale identifier, such as the id of locale \"English - United States\"."
    end

    attribute :tagging, :string do
      description "A tagging list that is space-separated and without any hash marks."
    end

    attribute :pnr_record_locator_code, :code do
      description "PNR record locator code"
    end

    attribute :date_of_reservation, :date do
      description "Date of reservation"
    end

    attribute :dates_of_intended_travel, :dates do
      description "Date(s) of intended travel"
    end

    attribute :name, :text do
      description "name"
    end

    attribute :other_names_on_pnr, :text do
      description "Other names on PNR"
    end

    attribute :number_of_travelers_on_pnr, :count do
      description "Number of travelers on PNR"
    end

    attribute :seat_information, :text do
      description "Seat information"
    end

    attribute :address, :text do
      description "Address"
    end

    attribute :all_forms_of_payment_information, :text do
      description "All forms of payment information"
    end

    attribute :billing_address, :text do
      description "Billing address"
    end

    attribute :contact_telephone_numbers, :text do
      description "Contact telephone numbers"
    end

    attribute :all_travel_itinerary_for_specific_pnr, :text do
      description "All travel itinerary for specific PNR"
    end

    attribute :frequent_flyer_information, :text do
      description "Frequent flyer information (limited to miles flown and address(es))"
    end

    attribute :travel_agency, :text do
      description "Travel agency"
    end

    attribute :travel_agent, :text do
      description "Travel agent"
    end

    attribute :code_share_pnr_information, :text do
      description "Code share PNR information"
    end

    attribute :travel_status_of_passenger, :text do
      description "Travel status of passenger"
    end

    attribute :split_divided_pnr_information, :text do
      description "Split/Divided PNR information"
    end

    attribute :identifiers_for_free_tickets, :text do
      description "Identifiers for free tickets"
    end

    attribute :one_way_tickets, :text do
      description "One-way tickets"
    end

    attribute :email_address, :email_address do
      description "Email address"
    end

    attribute :ticketing_field_information, :text do
      description "Ticketing field information"
    end

    attribute :atfq_fields, :text do
      description "ATFQ fields"
    end

    attribute :general_remarks, :text do
      description "General remarks"
    end

    attribute :ticket_number, :text do
      description "Ticket number"
    end

    attribute :seat_number, :text do
      description "Seat number"
    end

    attribute :date_of_ticket_issuance, :date do
      description "Date of ticket issuance"
    end

    attribute :any_collected_apis_information, :text do
      description "Any collected APIS information"
    end

    attribute :no_show_history, :text do
      description "No show history"
    end

    attribute :number_of_bags, :count do
      description "Number of bags"
    end

    attribute :bag_tab_numbers, :text do
      description "Bag tab numbers"
    end

    attribute :go_show_information, :text do
      description "Go show information"
    end

    attribute :number_of_bags_on_each_segment, :text do
      description "Number of bags on each segment"
    end

    attribute :osi_information, :text do
      description "OSI information"
    end

    attribute :ssi_information, :text do
      description "SSI information"
    end

    attribute :ssr_information, :text do
      description "SSR information"
    end

    attribute :voluntary_involuntary_upgrades, :text do
      description "Voluntary/involuntary upgrades"
    end

    attribute :received_from_information, :text do
      description "Received from information"
    end

    attribute :all_historical_changes_to_the_pnr, :text do
      description "All historical changes to the PNR"
    end

    attribute :travelers_full_name, :text do
      description "Traveler's full name"
    end

    attribute :travelers_date_of_birth, :text do
      description "Traveler's date of birth"
    end

    attribute :travelers_complete_home_address, :text do
      description "Traveler's complete home address"
    end

    attribute :travelers_home_phone_number, :text do
      description "Traveler's home phone number"
    end

  end
end
