
defmodule MyApp.MyDomain.DoraMetricsKit.Attributes do
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

    attribute :deployment_frequency_actual, :numeric do
      description "Deployment frequency actual value"
    end

    attribute :deployment_frequency_target, :numeric do
      description "Deployment frequency target value"
    end

    attribute :deployment_frequency_ratio, :numeric do
      description "Deployment frequency ratio = (actual / target)"
    end

    attribute :deployment_frequency_unit, :text do
      description "Deployment frequency unit"
    end

    attribute :deployment_frequency_description, :text do
      description "deployment frequency description"
    end

    attribute :mean_lead_time_for_changes_actual, :numeric do
      description "Mean lead time for changes actual value"
    end

    attribute :mean_lead_time_for_changes_target, :numeric do
      description "Mean lead time for changes target value"
    end

    attribute :mean_lead_time_for_changes_ratio, :numeric do
      description "Mean lead time for changes ratio = (actual / target)"
    end

    attribute :mean_lead_time_for_changes_unit, :text do
      description "Mean lead time for changes unit"
    end

    attribute :mean_lead_time_for_changes_description, :text do
      description "Mean lead time for changes description"
    end

    attribute :change_failure_rate_actual, :numeric do
      description "Change failure rate actual value"
    end

    attribute :change_failure_rate_target, :numeric do
      description "Change failure rate target value"
    end

    attribute :change_failure_rate_ratio, :numeric do
      description "Change failure rate ratio = (actual / target)"
    end

    attribute :change_failure_rate_unit, :text do
      description "Change failure rate unit"
    end

    attribute :change_failure_rate_description, :text do
      description "Change failure rate description"
    end

    attribute :failed_deployment_recovery_time_actual, :numeric do
      description "Failed deployment recovery time actual value"
    end

    attribute :failed_deployment_recovery_time_target, :numeric do
      description "Failed deployment recovery time target value"
    end

    attribute :failed_deployment_recovery_time_ratio, :numeric do
      description "Failed deployment recovery time (actual / target)"
    end

    attribute :failed_deployment_recovery_time_unit, :text do
      description "Failed deployment recovery time unit"
    end

    attribute :failed_deployment_recovery_time_description, :text do
      description "Failed deployment recovery time description"
    end

  end
end
