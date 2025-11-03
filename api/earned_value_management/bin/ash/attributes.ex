
defmodule MyApp.MyDomain.EarnedValueManagement.Attributes do
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

    attribute :planned_value, :numeric do
      description "Earned Value Management (EVM) Planned Value (PV)"
    end

    attribute :earned_value, :numeric do
      description "Earned Value Management (EVM) Earned Value (EV)"
    end

    attribute :actual_cost, :numeric do
      description "Earned Value Management (EVM) Actual Cost (AC)"
    end

    attribute :cost_variance, :numeric do
      description "Earned Value Management (EVM) Cost Variance (CV)

- Cost Variance (CV) = Earned Value (EV) – Actual Cost (AC)

- Positive: ahead of budget a.k.a. cost underrun

- Negative: behind budget a.k.a. cost overrun"
    end

    attribute :cost_variance_ratio, :numeric do
      description "Earned Value Management (EVM) Cost Variance Ratio (CVR)"
    end

    attribute :cost_performance_index, :numeric do
      description "Earned Value Management (EVM) Cost Performance Index (CVI)

- Cost Performance Index (CPI) = Earned Value (EV) / Actual Cost (AC)

- Positive: cost is less than budgeted

- Negative: cost is greater than budgeted"
    end

    attribute :schedule_variance, :numeric do
      description "Earned Value Management (EVM) Schedule Variance (SV)

- Schedule Variance (SV) = Earned Value (EV) – Planned Value (PV)

- Positive: ahead of schedule a.k.a. time underrun

- Negative: behind schedule a.,k.a. time overrun"
    end

    attribute :schedule_variance_ratio, :numeric do
      description "Earned Value Management (EVM) Schedule Variance Ratio (SVR)"
    end

    attribute :schedule_performance_index, :numeric do
      description "Earned Value Management (EVM) Schedule Performance Index (SPI)

- Schedule Performance Index (SPI) = Earned Value (EV) / Planned Value (PV)

- Positive: ahead of schedule

- Negative: behind schedule"
    end

  end
end
