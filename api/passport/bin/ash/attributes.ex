
defmodule MyApp.MyDomain.Passport.Attributes do
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

    attribute :sign, :string do
      description "An optional one-character sign, such as an emoji indicator."
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

    attribute :name_of_holder, :text do
      description "Name of holder"
      allow_nil? False
    end

    attribute :nationality, :text do
      description "Nationality"
      allow_nil? False
    end

    attribute :date_of_birth, :date do
      description "Date of birth"
      allow_nil? False
    end

    attribute :date_of_birth_check_digit, :int do
      description "Date of birth check digit"
      allow_nil? False
    end

    attribute :sex, :text do
      description "Sex"
      allow_nil? False
    end

    attribute :composite_check_digit, :int do
      description "Composite check digit"
      allow_nil? False
    end

    attribute :document_type, :text do
      description "Document type"
      allow_nil? False
    end

    attribute :document_number, :text do
      description "Document number"
      allow_nil? False
    end

    attribute :document_number_check_digit, :int do
      description "Document number check digit"
      allow_nil? False
    end

    attribute :issuing_state_or_organization, :text do
      description "Issuing state or organization"
      allow_nil? False
    end

    attribute :date_of_expiry_or_valid_until_date, :date do
      description "Date of expiry or valid until date"
      allow_nil? False
    end

    attribute :date_of_expiry_or_valid_until_date_check_digit, :int do
      description "Date of expiry or valid until date check digit"
      allow_nil? False
    end

    attribute :optional_data, :text do
      description "Optional data"
      allow_nil? True
    end

    attribute :optional_data_check_digit, :int do
      description "Optional data check digit"
      allow_nil? True
    end

    attribute :encoded_face, :binary do
      description "Encoded face. This is a binary file of the holder's face."
      allow_nil? False
    end

    attribute :encoded_fingers, :binary do
      description "Encoded finger(s). This is a binary file of the holder's fingerprint(s)."
      allow_nil? True
    end

    attribute :encoded_eyes, :binary do
      description "Encoded eyes.  This is a binary file of the holder's eye(s)."
      allow_nil? True
    end

    attribute :displayed_portrait, :binary do
      description "Displayed portrait"
      allow_nil? True
    end

    attribute :reserved_for_future_use, :todo do
      description "Reserved for future use"
      allow_nil? True
    end

    attribute :displayed_signature_or_usual_mark, :binary do
      description "Displayed signature or usual mark. This is an image of the holder's signature or equivalent usual mark such as an X."
    end

    attribute :data_features, :unknown do
      description "Data features."
      allow_nil? True
    end

    attribute :structure_features, :unknown do
      description "Structure features."
      allow_nil? True
    end

    attribute :substance_features, :todo do
      description "Substance features."
      allow_nil? True
    end

    attribute :other_names_of_holder, :text do
      description "Other names of holder."
      allow_nil? True
    end

    attribute :place_of_birth, :text do
      description "Place of birth."
      allow_nil? True
    end

    attribute :personal_number, :text do
      description "Personal number."
      allow_nil? True
    end

    attribute :address, :text do
      description "Address."
      allow_nil? True
    end

    attribute :telephone_numbers, :text do
      description "Telephone number(s)."
      allow_nil? True
    end

    attribute :profession, :text do
      description "Profession."
      allow_nil? True
    end

    attribute :title, :text do
      description "Title."
      allow_nil? True
    end

    attribute :personal_summary, :text do
      description "Personal summary."
      allow_nil? True
    end

    attribute :proof_of_citizenship, :text do
      description "Proof of citizenship."
      allow_nil? True
    end

    attribute :other_valid_travel_documents, :text do
      description "Other valid travel documents."
      allow_nil? True
    end

    attribute :custody_information, :text do
      description "Custody information."
      allow_nil? True
    end

    attribute :issuing_authority, :text do
      description "Issuing authority."
      allow_nil? True
    end

    attribute :date_of_issue, :date do
      description "Date of issue."
      allow_nil? True
    end

    attribute :other_persons_included_on_mrtd, :text do
      description "Other persons included on MRTD."
      allow_nil? True
    end

    attribute :endorsements_observations, :text do
      description "Endorsements observations."
      allow_nil? True
    end

    attribute :tax_exit_requirements, :text do
      description "Tax exit requirements."
      allow_nil? True
    end

    attribute :image_of_front_of_mrtd, :binary do
      description "Image of front of machine-readable travel document (MRTD)."
      allow_nil? True
    end

    attribute :image_of_rear_of_mrtd, :binary do
      description "Image of rear of machine-readable travel document (MRTD)."
      allow_nil? True
    end

    attribute :optional_details, :text do
      description "Optional details."
      allow_nil? True
    end

    attribute :security_options, :todo do
      description "Security options."
      allow_nil? True
    end

    attribute :active_authentication_public_key_info, :todo do
      description "Active authentication public key info."
      allow_nil? True
    end

    attribute :persons_to_notify, :text do
      description "Person(s) to notify."
      allow_nil? True
    end

    attribute :contact_details_of_persons_to_notify, :text do
      description "1-415-555-5556"
      allow_nil? True
    end

    attribute :country_id, :country.id do
      description "The country id suitable for index lookups."
    end

    attribute :four_corner_open_book_photo_url, :text do
      description "Link to a photo that clearly shows the four corner perspective of the passport, specifically with the passport open so it shows the holder information and holder signature. This is suitable for a government verification, or background check, or security approval, etc."
    end

    attribute :four_corner_clear_face_open_book_photo_url, :text do
      description "Link to a photo that clearly shows the four corner perspective of the passport, specifically with a clear face view of the holder holding the passport, specifically with the passport open so it shows the holder information and holder signature. This is suitable for a government verification, or background check, or security approval, etc."
    end

  end
end
