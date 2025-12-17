
defmodule MyApp.MyDomain.PostalContact.Attributes do
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

    attribute :freeform, :text do
      description "freeform"
    end

    attribute :country_text, :text do
      description "A country means a generally recognized country, or in some cases, like Hong Kong, an area of quasi-national administrative status that has a designated country code under ISO 3166-1. If possible, aim for ISO 3166-1."
    end

    attribute :country_subdivision_text, :text do
      description "A country's regional area, such as a United States state, a Canada province, etc.  If possible, aim for ISO 3166-2."
    end

    attribute :district_text, :text do
      description "A district is typically smaller than a region, and typically larger than a city, in countries that use such an additional layer in postal addressing, for example, prefectures in China."
    end

    attribute :locality_text, :text do
      description "A region's local area, such as a city, town, village"
    end

    attribute :locality_subdivision_text, :text do
      description "A region's local area subdivision, such as a city district, town sector, village part. For example, district is an official sub-city features present in countries where such an additional administrative layer is used in postal addressing, or where such features are commonly referred to in local parlance. Examples include city districts in Brazil and Chile and arrondissements in France."
    end

    attribute :neighborhood_text, :text do
      description "A locality's neighborhood area, such as a district, subdivision, zone"
    end

    attribute :postal_code_text, :text do
      description "A postal code used in country-specific national addressing systems. For example, a United States ZIP code, a Canada mail routing number, etc."
    end

    attribute :street_address_text, :text do
      description "street address text"
    end

    attribute :premise_address_text, :text do
      description "A street address subcategory, such as an apartment identifier, suite code, mailbox number, room name"
    end

    attribute :global_location_number_text, :text do
      description "See https://schema.org/globalLocationNumber https://en.wikipedia.org/wiki/Global_Location_Number"
    end

  end
end
