
defmodule MyApp.MyDomain.Allergy.Attributes do
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

    attribute :scientific_name, :string do
      description "The World Health Organization and International Union of Immunological Societies (WHO/IUIS) establish a systematic naming convention for allergen identification, which uses the Linnaean taxonomic system (genus and species)."
    end

    attribute :european_union_name, :string do
      description "The European Union (EU) Food Standards Agency (FSA) mandates identifying \"major food allergens\"."
    end

    attribute :united_states_name, :string do
      description "The United States (US) Food and Drug Administration (FDA) mandates identifying \"major food allergens\" under the Food Allergen Labeling and Consumer Protection Act (FALCPA)."
    end

    attribute :cosmetic_name, :string do
      description "Cosmetic products must list specific allergens in the ingredient list if they exceed 0."
    end

  end
end
