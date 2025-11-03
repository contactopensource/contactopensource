
defmodule MyApp.MyDomain.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill.Attributes do
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

    attribute :name, :string do
    end

    attribute :url, :text do
    end

    attribute :description, :string do
    end

    attribute :level_1_description_as_markdown, :markdown do
      description "Skill level 1 is \"Awareness\"; this field is the exact markdown from the official download CSV."
    end

    attribute :level_1_description_as_html, :html do
      description "Skill level 1 is \"Awareness\"; this field is the cache conversion into HTML list items."
    end

    attribute :level_2_description_as_markdown, :markdown do
      description "Skill level 2 is \"Working\"; this field is the exact markdown from the official download CSV."
    end

    attribute :level_2_description_as_html, :html do
      description "Skill level 2 is \"Working\"; this field is the cache conversion into HTML list items."
    end

    attribute :level_3_description_as_markdown, :html do
      description "Skill level 3 is \"Practitioner; this field is the exact markdown from the official download CSV."
    end

    attribute :level_3_description_as_html, :html do
      description "Skill level 3 is \"Practitioner\"; this field is the cache conversion into HTML list items."
    end

    attribute :level_4_description_as_markdown, :html do
      description "Skill level 4 is \"Expert\"; this field is the exact markdown from the official download CSV."
    end

    attribute :level_4_description_as_html, :html do
      description "Skill level 4 is \"Expert\"; this field is the cache conversion into HTML list items."
    end

    attribute :roles_that_require_this_skill_as_markdown, :html do
      description "Roles that require this skill; this field is the exact markdown from the official download CSV."
    end

    attribute :roles_that_require_this_skill_as_html, :html do
      description "Roles that require this skill; this field is the cache conversion into HTML list items."
    end

  end
end
