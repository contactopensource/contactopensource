
defmodule MyApp.MyDomain.AccessOccupancy.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :access_tenant_id, :access_tenant.id do
    end

    attribute :access_agent_id, :access_agent.id do
    end

  end
end
