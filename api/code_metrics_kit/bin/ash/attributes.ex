
defmodule MyApp.MyDomain.CodeMetricsKit.Attributes do
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

    attribute :maintainability_index_actual, :numeric do
      description "Maintainability index actual value"
    end

    attribute :maintainability_index_target, :numeric do
      description "Maintainability index target value"
    end

    attribute :maintainability_index_ratio, :numeric do
      description "Maintainability index ration (actual / target)"
    end

    attribute :maintainability_index_unit, :string do
      description "Maintainability index unit"
    end

    attribute :maintainability_index_description, :string do
      description "Maintainability index description"
    end

    attribute :line_count_actual, :numeric do
      description "Line count actual value"
    end

    attribute :line_count_target, :numeric do
      description "Line count target value"
    end

    attribute :line_count_ratio, :numeric do
      description "Line count ratio = (actual / target)"
    end

    attribute :line_count_unit, :string do
      description "Line count unit"
    end

    attribute :line_count_description, :string do
      description "Line count description"
    end

    attribute :test_automation_code_coverage_actual, :numeric do
      description "Test automation code coverage actual value"
    end

    attribute :test_automation_code_coverage_target, :numeric do
      description "Test automation code coverage target value"
    end

    attribute :test_automation_code_coverage_ratio, :numeric do
      description "Test automation code coverage ratio = (actual / target)"
    end

    attribute :test_automation_code_coverage_unit, :string do
      description "Test automation code coverage unit"
    end

    attribute :test_automation_code_coverage_description, :string do
      description "Test automation code coverage description"
    end

  end
end
