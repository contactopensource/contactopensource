
defmodule MyApp.MyDomain.SubcountryCodeIso3166Dash2.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :alpha_2:string(2), :string do
      description "TODO"
    end

    attribute :country_code_iso_3166_1_id, :references do
    end

  end
end
