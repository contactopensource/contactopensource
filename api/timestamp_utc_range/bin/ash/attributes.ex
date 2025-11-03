
defmodule MyApp.MyDomain.Timestamp UTC Range.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :start, :timestamp_utc_usec_utc do
      description "start"
    end

    attribute :stop, :timestamp_utc_usec_utc do
      description "stop"
    end

    attribute :duration_as_seconds, :count do
    end

  end
end
