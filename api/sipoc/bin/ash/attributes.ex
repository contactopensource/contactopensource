
defmodule MyApp.MyDomain.Sipoc.Attributes do
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

    attribute :suppliers_as_url, :text do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) suppliers description as URL"
    end

    attribute :suppliers_as_markdown, :markdown do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) suppliers description as markdown"
    end

    attribute :inputs_as_url, :text do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) inputs description as URL"
    end

    attribute :inputs_as_markdown, :markdown do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) inputs description as markdown"
    end

    attribute :processes_as_url, :text do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) processes description as URL"
    end

    attribute :processes_as_markdown, :markdown do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) processes description as markdown"
    end

    attribute :outputs_as_url, :text do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) outputs description as URL"
    end

    attribute :outputs_as_markdown, :markdown do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) outputs description as markdown"
    end

    attribute :customers_as_url, :text do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) customers description as URL"
    end

    attribute :customers_as_markdown, :markdown do
      description "Suppliers Inputs Processes Outputs Customers (SIPOC) customers description as markdown"
    end

  end
end
