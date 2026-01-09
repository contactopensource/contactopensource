
defmodule MyApp.MyDomain.SixAxisModelOfInfluence.Attributes do
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

    attribute :suggestibility, :probability do
      description "Suggestibility is the degree to which a person will accept and then act on a given suggestion by an operator.
Prioritize this axis for a situation that require you to be more memorable than persuasive."
    end

    attribute :focus, :probability do
      description "Focus is the degree to which a person will maintain attention on something and exclude other competing stimuli from awareness.
Prioritize this axis for a situation requiring strong deviation from person's normal behavior."
    end

    attribute :openness, :probability do
      description "Openness is the degree to which a person feels they can completely become vulnerable with another person, marked by an absence of fear of social or societal repercussions.
Prioritize this axis for a situation requiring more trust and emotion than logic and judgment."
    end

    attribute :connection, :probability do
      description "Connection is the degree to which a person feels a sense of social connection with another marked by a desire for future contact.
Prioritize this axis for a situation requiring deviation from baseline that the subject might perceive as illogical or unusual."
    end

    attribute :compliance, :probability do
      description "Compliance is the degree to which a person will comply with a direction to perform an action.
Prioritize this axis for a situation requiring a gradual increase in compliant behavior that becomes self-sustaining over time."
    end

    attribute :expectancy, :probability do
      description "Expectancy is the degree to which a person reasonably feels they can predict, either consciously or unconsciously, what's to come, and that it will be enjoyed. 
Prioritize this axis for a situation requiring excitement and trust, where the subject will use predictions about the future to make decisions about themselves in the present."
    end

  end
end
