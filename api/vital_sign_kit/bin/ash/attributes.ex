
defmodule MyApp.MyDomain.VitalSignKit.Attributes do
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

    attribute :blood-pressure-diastolic-as-mmhg, :count do
      description "blood pressure diastolic as mmhg"
    end

    attribute :blood-pressure-systolic-as-mmhg, :count do
      description "blood pressure systolic as mmhg"
    end

    attribute :body-fat-as-percentage, :percent do
      description "body fat as percentage"
    end

    attribute :body-temperature-as-celcius, :celcius do
      description "body temperature as celcius"
    end

    attribute :cholesterol-hdl-as-mmol-per-litre, :count do
      description "cholesterol HDL mmol per litre"
    end

    attribute :cholesterol-ldl-as-mmol-per-litre, :count do
      description "cholesterol LDL as mmol per litre"
    end

    attribute :heart-rate-as-beats-per-minute, :count do
      description "heart rate as beats per minute"
    end

    attribute :heart-rate-variability, :percent do
      description "heart rate variability"
    end

    attribute :height-as-cm, :count do
      description "height as cm"
    end

    attribute :respiratory-rate-as-breaths-per-minute, :count do
      description "respiratory rate as breaths per minute"
    end

    attribute :sleep-score-as-percent, :percent do
      description "sleep score as 0 to 100"
    end

    attribute :total-sleep-time-as-min-per-day, :count do
      description "total sleep time as min per day"
    end

    attribute :vo2-max-as-ml-per-kg-per-minute, :count do
      description "VO2 max as ml per kg per minute"
    end

    attribute :waist-circumference-as-cm, :count do
      description "waist circumference as cm"
    end

    attribute :weight-as-kg, :count do
      description "weight-as-kg"
    end

  end
end
