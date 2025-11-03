
defmodule MyApp.MyDomain.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole.Attributes do
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

    attribute :family_id, :united_kingdom_government_digital_and_data_profession_capability_framework_role_family.id do
      description "The wider group that each role is part of"
    end

    attribute :name, :string do
      description "The name of the role"
    end

    attribute :url, :text do
      description "The link to the UK GDAD PCF role"
    end

    attribute :description_as_markdown, :markdown do
      description "The short description and typical responsibilities for the role in general"
    end

    attribute :level_name, :string do
      description "the name of the role levels that the role has"
    end

    attribute :level_description_as_markdown, :markdown do
      description "The short description and typical responsibilities for each role level"
    end

    attribute :senior_civil_service_flag, :boolean do
      description "Whether the role uses the skills for Senior Civil Service roles"
    end

  end
end
