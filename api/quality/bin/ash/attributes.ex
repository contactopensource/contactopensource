
defmodule MyApp.MyDomain.Quality.Attributes do
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

    attribute :summary, :string do
    end

    attribute :description, :text do
    end

    attribute :disambiguation, :text do
    end

    attribute :sign, :string do
      description "An option one-character sign, such as an emoji indicator."
    end

    attribute :kind, :string do
      description "A category class, such as a useful way to sort or subset the resource."
    end

    attribute :avatar_image_400x400_url, :text do
      description "An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as a URL."
    end

    attribute :avatar_image_400x400_alt, :text do
      description "An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as an alternate text description."
    end

    attribute :main_image_1080x1080_url, :text do
      description "A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as a URL."
    end

    attribute :main_image_1080x1080_alt, :text do
      description "A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as an alternate text description."
    end

    attribute :main_image_1920x1080_url, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL."
    end

    attribute :main_image_1920x1080_alt, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description."
    end

    attribute :main_image_1080x1920_url, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL."
    end

    attribute :main_image_1080x1920_alt, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description."
    end

    attribute :emoji, :text do
      description "Any emoji related to the item, such as for a badge, or indicator, or expression, etc."
    end

    attribute :star_count, :integer do
      description "A star count from 0-5, such as for a rating, or review, or priority, etc."
    end

    attribute :quick_response_code_id, :quick_response_code.id do
      description "A quick-response (QR) code that uniquely identifies this card."
    end

    attribute :universal_product_code_id, :universal_product_code.id do
      description "A universal product code (UPC) that uniquely identifies this card."
    end

  end
end
