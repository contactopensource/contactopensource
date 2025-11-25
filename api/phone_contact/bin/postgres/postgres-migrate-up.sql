CREATE TABLE phone_contact (
);

CREATE INDEX phone_contact_id_index on phone_contact(id);
CREATE INDEX phone_contact_created_at_index on phone_contact(created_at);
CREATE INDEX phone_contact_created_by_index on phone_contact(created_by);
CREATE INDEX phone_contact_updated_at_index on phone_contact(updated_at);
CREATE INDEX phone_contact_updated_by_index on phone_contact(updated_by);
CREATE INDEX phone_contact_retired_at_index on phone_contact(retired_at);
CREATE INDEX phone_contact_retired_by_index on phone_contact(retired_by);
CREATE INDEX phone_contact_locale_code_index on phone_contact(locale_code);
CREATE INDEX phone_contact_tagging_index on phone_contact(tagging);
CREATE INDEX phone_contact_name_index on phone_contact(name);
CREATE INDEX phone_contact_subname_index on phone_contact(subname);
CREATE INDEX phone_contact_slug_index on phone_contact(slug);
CREATE INDEX phone_contact_sign_index on phone_contact(sign);
CREATE INDEX phone_contact_kind_index on phone_contact(kind);
CREATE INDEX phone_contact_number_text_index on phone_contact(number_text);
CREATE INDEX phone_contact_e164_text_index on phone_contact(e164_text);
CREATE INDEX phone_contact_e164_country_code_index on phone_contact(e164_country_code);
CREATE INDEX phone_contact_e164_national_destination_code_index on phone_contact(e164_national_destination_code);

