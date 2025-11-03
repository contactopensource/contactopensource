
defmodule MyApp.MyDomain.CountryCodeIso3166Dash1.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :alpha_2:string(2), :string do
      description "TODO"
    end

  end
end
