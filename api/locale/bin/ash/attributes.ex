
defmodule MyApp.MyDomain.locale.Attributes do
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

    attribute :text, :text do
      description "text"
    end

    attribute :language_code, :text do
      description "language code"
    end

    attribute :country_code, :text do
      description "country code"
    end

    attribute :script_code, :text do
      description "See http://www.unicode.org/iso15924/codelists.html"
    end

    attribute :region_code, :text do
      description "region code"
    end

    attribute :variant_code, :text do
      description "variant code"
    end

    attribute :decimal_separator, :text do
      description "See https://en.wikipedia.org/wiki/Decimal_separator"
    end

    attribute :grouping_separator, :text do
      description "grouping separator"
    end

    attribute :currency_name, :text do
      description "currency name in locale language"
    end

    attribute :currency_code, :text do
      description "currency code in locale language"
    end

    attribute :currency_symbol, :text do
      description "currency symbol"
    end

    attribute :quotation_start_delimiter, :text do
      description "quotation start delimiter"
    end

    attribute :quotation_stop_delimiter, :text do
      description "quotation stop delimiter"
    end

  end
end
