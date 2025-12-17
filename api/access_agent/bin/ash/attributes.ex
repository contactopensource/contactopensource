
defmodule MyApp.MyDomain.AccessAgent.Attributes do
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

    attribute :name, :string do
      description "The card name a.k.a. card title, typically displayed in large font size on the card, such as a H1 headline, or a person's name."
    end

    attribute :subname, :string do
      description "The card subname a.k.a. card subtitle, typically displayed medium font size on the card, such as a H2 headline, or a person's handle."
    end

    attribute :slug, :string do
      description "The card slug suitable for a web URL using kebab case or equivalent internationalization. This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems."
    end

    attribute :summary, :string do
      description "This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems."
    end

    attribute :description, :text do
      description "Describe this item. This can be as long as you wish."
    end

    attribute :disambiguation, :text do
      description "Explain differences between this item and other items. This can be as long as you wish."
    end

    attribute :sign, :text do
      description "An optional one-character sign, such as an emoji indicator."
    end

    attribute :kind, :string do
      description "A category class, such as a useful way to sort or subset the resource."
    end

    attribute :star_count, :integer do
      description "A star count from 1-5, such as for a rating, or review, or priority, etc."
    end

    attribute :quick_response_code_id, :quick_response_code.id do
      description "A quick-response (QR) code that uniquely identifies this card."
    end

    attribute :universal_product_code_id, :universal_product_code.id do
      description "A universal product code (UPC) that uniquely identifies this card."
    end

    attribute :key, :string do
    end

  end
end
