
defmodule MyApp.MyDomain.TotalProjectControl.Attributes do
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

    attribute :dipp, :numeric do
      description "Devaux's Index of Project Performance (DIPP)"
    end

    attribute :dipp_progress_index_ratio, :numeric do
      description "Devaux's Index of Project Performance (DIPP) Progress Index (PI)"
    end

    attribute :dipp_progress_index_numerator, :numeric do
      description "Devaux's Index of Project Performance (DIPP) Progress Index (PI) Numerator"
    end

    attribute :dipp_progress_index_denominator, :numeric do
      description "Devaux's Index of Project Performance (DIPP) Progress Index (PI) Denominator"
    end

    attribute :expected_monetary_value, :numeric do
      description "Expected Monetary Value (EMV)"
    end

    attribute :cost_estimate_to_complete, :numeric do
      description "Cost Estimate to Complete (CEC)"
    end

  end
end
