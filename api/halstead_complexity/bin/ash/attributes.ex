
defmodule MyApp.MyDomain.HalsteadComplexity.Attributes do
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

    attribute :volume_actual, :numeric do
      description "Halstead complexity volume actual value"
    end

    attribute :volume_target, :numeric do
      description "Halstead complexity target value"
    end

    attribute :volume_ratio, :numeric do
      description "Halstead complexity volume ratio = (actual / target)"
    end

    attribute :volume_unit, :text do
      description "Halstead complexity volume unit"
    end

    attribute :volume_description, :text do
      description "Halstead complexity volume description"
    end

    attribute :difficulty_actual, :numeric do
      description "Halstead complexity difficulty actual value"
    end

    attribute :difficulty_target, :numeric do
      description "Halstead complexity difficulty target value"
    end

    attribute :difficulty_ratio, :numeric do
      description "Halstead complexity difficulty ratio = (actual / target)"
    end

    attribute :difficulty_unit, :text do
      description "Halstead complexity difficulty unit"
    end

    attribute :difficulty_description, :text do
      description "Halstead complexity difficulty description"
    end

    attribute :effort_actual, :numeric do
      description "Halstead complexity effort actual value"
    end

    attribute :effort_target, :numeric do
      description "Halstead complexity effort target value"
    end

    attribute :effort_ratio, :numeric do
      description "Halstead complexity effort ratio = (actual / target)"
    end

    attribute :effort_unit, :numeric do
      description "Halstead complexity effort unit"
    end

    attribute :effort_description, :numeric do
      description "Halstead complexity effort description"
    end

  end
end
