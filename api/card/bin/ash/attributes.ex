
defmodule MyApp.MyDomain.Card.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

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

  end
end
