
defmodule MyApp.MyDomain.AccessAssignment.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :access_agent_id, :access_agent.id do
    end

    attribute :access_attribute_id, :access_attribute.id do
    end

  end
end
