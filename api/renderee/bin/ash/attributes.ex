
defmodule MyApp.MyDomain.Renderee.Attributes do
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

    attribute :renderer_id, :renderer.id do
      description "Renderer id"
    end

    attribute :input_media_type_id, :media_type.id do
      description "Input media type, such as \"text/vnd.plantuml\" for PlantUML text"
    end

    attribute :input_as_json, :text do
      description "Input as JSON, such as arbitrary JavaScript data. This field is as a union of ( as_json | as_text | as_url )."
    end

    attribute :input_as_text, :text do
      description "Input as text, such as PlantUML markup text that we want to render to a PNG image. Use this field when you want the data store to maintain the input as text; otherwise, prefer the field input_as_url."
    end

    attribute :input_as_url, :text do
      description "Input as URL, such as a link to a photo image that we want to render to a text caption. Use this field when you want the data store to fetch the input URL; otherwise, prefer the field input_as_text."
    end

    attribute :output_media_type_id, :media_type.id do
      description "Output media type, such as \"image/png\" for PlantUML text"
    end

    attribute :output_as_json, :text do
      description "Output as JSON, such as arbitrary JavaScript data. This field is a union of ( as_json | as_text | as_url )."
    end

    attribute :output_as_text, :text do
      description "Output as text, such as w Use this field when you want the data store to maintain the output as text. Otherwise, prefer the field output_as_url."
    end

    attribute :output_as_url, :text do
      description "Output as URL, such as a link to PlantUML PNG image."
    end

  end
end
