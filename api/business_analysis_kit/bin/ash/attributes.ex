
defmodule MyApp.MyDomain.BusinessAnalysis.Attributes do
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

    attribute :six_pager_double_sider_as_url, :text do
      description "Six-pager double-sider explanation, as URL"
    end

    attribute :six_pager_double_sider_as_markdown, :markdown do
      description "Six-pager double-sider explanation, as markdown"
    end

    attribute :swot_as_url, :text do
      description "Strengths Weaknesses Opportunities Threats (SWOT), as URL"
    end

    attribute :swot_strengths_as_markdown, :markdown do
      description "Strengths"
    end

    attribute :swot_weaknesses_as_markdown, :markdown do
      description "Weaknesses"
    end

    attribute :swot_opportunities_as_markdown, :markdown do
      description "Opportunities"
    end

    attribute :swot_threats_as_markdown, :markdown do
      description "Threats"
    end

    attribute :porters_five_forces_as_url, :text do
      description "Porter's Five Forces, as URL"
    end

    attribute :porters_five_forces_entrants_as_markdown, :markdown do
      description "Threat Of Entrants"
    end

    attribute :porters_five_forces_substitutes_as_markdown, :markdown do
      description "Threat Of Substitutes"
    end

    attribute :porters_five_forces_customers_as_markdown, :markdown do
      description "Bargaining Power Of Customers"
    end

    attribute :porters_five_forces_suppliers_as_markdown, :markdown do
      description "Bargaining Power Of Suppliers"
    end

    attribute :porters_five_forces_competitors_as_markdown, :markdown do
      description "Rivalry Of Competitors"
    end

    attribute :steeple_as_url, :text do
      description "Political, Economic, Sociological, Technological, Legal, Environmental (PESTLE), as URL"
    end

    attribute :steeple_sociological_as_markdown, :markdown do
      description "Sociological"
    end

    attribute :steeple_technological_as_markdown, :markdown do
      description "Technological"
    end

    attribute :steeple_economic_as_markdown, :markdown do
      description "Economic"
    end

    attribute :steeple_environmental_as_markdown, :markdown do
      description "Environmental"
    end

    attribute :steeple_political_as_markdown, :markdown do
      description "Political"
    end

    attribute :steeple_legal_as_markdown, :markdown do
      description "Legal"
    end

    attribute :steeple_ethical_as_markdown, :markdown do
      description "Ethical"
    end

    attribute :roles_and_responsibilities_as_url, :text do
      description "Roles and Responsibilities, as URL"
    end

    attribute :roles_and_responsibilities_as_markdown, :markdown do
      description "Roles and Responsibilities, as markdown"
    end

    attribute :responsibility_assignment_matrix_as_url, :text do
      description "Responsibility Assignment Matrix (RAM) such as a RASCIO Matrix, as URL"
    end

    attribute :responsibility_assignment_matrix_as_markdown, :markdown do
      description "Responsibility Assignment Matrix (RAM) such as a RASCIO Matrix, as markdown"
    end

  end
end
