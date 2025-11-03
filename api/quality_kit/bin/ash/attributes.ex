
defmodule MyApp.MyDomain.QualityKit.Attributes do
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

    attribute :quality_availability_as_url, :text do
      description "Quality documentation about availability, as URL"
    end

    attribute :quality_availability_as_markdown, :markdown do
      description "Quality documentation about availability, as markdown"
    end

    attribute :quality_certifiability_as_url, :text do
      description "Quality documentation about certifiability, as URL"
    end

    attribute :quality_certifiability_as_markdown, :markdown do
      description "Quality documentation about certifiability, as markdown"
    end

    attribute :quality_compatibility_as_url, :text do
      description "Quality documentation about compatibility, as URL"
    end

    attribute :quality_compatibility_as_markdown, :markdown do
      description "Quality documentation about compatibility, as markdown"
    end

    attribute :quality_efficiency_as_url, :text do
      description "Quality documentation about efficiency, as URL"
    end

    attribute :quality_efficiency_as_markdown, :markdown do
      description "Quality documentation about efficiency, as markdown"
    end

    attribute :quality_governability_as_url, :text do
      description "Quality documentation about governability, as URL"
    end

    attribute :quality_governability_as_markdown, :markdown do
      description "Quality documentation about governability, as markdown"
    end

    attribute :quality_maintainability_as_url, :text do
      description "Quality documentation about maintainability, as URL"
    end

    attribute :quality_maintainability_as_markdown, :markdown do
      description "Quality documentation about maintainability, as markdown"
    end

    attribute :quality_observability_as_url, :markdown do
      description "Quality documentation about observability, as URL"
    end

    attribute :quality_observability_as_markdown, :markdown do
      description "Quality documentation about observability, as markdown"
    end

    attribute :quality_operability_as_markdown, :text do
      description "Quality documentation about operability, as URL"
    end

    attribute :quality_operability_as_markdown, :markdown do
      description "Quality documentation about operability, as markdown"
    end

    attribute :quality_recoverability_as_url, :text do
      description "Quality documentation about recoverability, as URL"
    end

    attribute :quality_recoverability_as_markdown, :markdown do
      description "Quality documentation about recoverability, as markdown"
    end

    attribute :quality_scalability_as_url, :text do
      description "Quality documentation about scalability, as URL"
    end

    attribute :quality_scalability_as_markdown, :markdown do
      description "Quality documentation about scalability, as markdown"
    end

    attribute :quality_security_as_url, :text do
      description "Quality documentation about security, as URL"
    end

    attribute :quality_security_as_markdown, :markdown do
      description "Quality documentation about security, as markdown"
    end

    attribute :quality_suitability_as_url, :markdown do
      description "Quality documentation about suitability, as URL"
    end

    attribute :quality_suitability_as_markdown, :markdown do
      description "Quality documentation about suitability, as markdown"
    end

    attribute :quality_testability_as_url, :text do
      description "Quality documentation about testability, as URL"
    end

    attribute :quality_testability_as_markdown, :markdown do
      description "Quality documentation about testability, as markdown"
    end

    attribute :quality_transferability_as_url, :text do
      description "Quality documentation about transferability, as URL"
    end

    attribute :quality_transferability_as_markdown, :markdown do
      description "Quality documentation about transferability, as markdown"
    end

    attribute :quality_translatability_as_url, :text do
      description "Quality documentation about translatability, as URL"
    end

    attribute :quality_translatability_as_markdown, :markdown do
      description "Quality documentation about translatability, as markdown"
    end

    attribute :quality_warrantability_as_url, :text do
      description "Quality documentation about warrantability, as URL"
    end

    attribute :quality_warrantability_as_markdown, :markdown do
      description "Quality documentation about warrantability, as markdown"
    end

  end
end
