
defmodule MyApp.MyDomain.MedicationStem.Attributes do
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

    attribute :stem, :string do
      description "The medication stem is the part of a medication's name that indicates its pharmacological class or chemical structure, often following specific naming conventions (stems) that reflect their function or target. For example, -cillin denotes penicillins, -olol indicates beta-blockers, and -statin indicates cholesterol-lowering drugs."
    end

    attribute :class, :string do
      description "The medication class is a group of medications that share similar pharmacological properties, mechanisms of action, or therapeutic uses. For example, penicillins are a class of antibiotics that include medications with the -cillin stem, such as amoxicillin and penicillin G."
    end

    attribute :examples, :string do
      description "Examples of medications that belong to the class indicated by the stem. For instance, for the -cillin stem, examples include amoxicillin, penicillin G, and ampicillin."
    end

  end
end
