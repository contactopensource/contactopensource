
defmodule MyApp.MyDomain.UnitedKingdomCivilServiceGrade.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :step, :integer do
    end

    attribute :label, :string do
    end

    attribute :abbreviation, :string do
    end

    attribute :minimum_salary, :integer do
    end

    attribute :definition, :string do
    end

  end
end
