
defmodule MyApp.MyDomain.Medicine.Attributes do
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

    attribute :international_nonproprietary_name, :string do
      description "The International Nonproprietary Name (INN) is a standard generic name assigned to the active ingredient, distinct from its brand name. These names follow specific naming conventions (stems) that reflect their chemical structure, function, or target. For example, -cillin denotes penicillins, -olol indicates beta-blockers, and -statin indicates cholesterol-lowering drugs."
    end

    attribute :description, :string do
      description "The description provides a detailed overview of the medicine, including its uses, effects, and any relevant information about its application. For example, \"Aspirin is a medication used to reduce pain, fever, or inflammation. It is also used as an antiplatelet agent to prevent blood clots.\""
    end

  end
end
