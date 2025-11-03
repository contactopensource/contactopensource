
defmodule MyApp.MyDomain.AccessPermission.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :access_attribute_id, :access_attribute.id do
    end

    attribute :access_operation_id, :access_operation.id do
    end

  end
end
