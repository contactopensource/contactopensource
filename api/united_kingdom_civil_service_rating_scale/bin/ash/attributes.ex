
defmodule MyApp.MyDomain.UnitedKingdomCivilServiceRatingScale.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :rating, :integer do
    end

    attribute :label, :string do
    end

    attribute :definition, :string do
    end

  end
end
