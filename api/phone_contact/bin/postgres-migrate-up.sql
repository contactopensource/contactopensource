CREATE TABLE phone_contact (
);

CREATE INDEX index_phone_contact_id on phone_contact(id);
CREATE INDEX index_phone_contact_created_at on phone_contact(created_at);
CREATE INDEX index_phone_contact_created_by on phone_contact(created_by);
CREATE INDEX index_phone_contact_updated_at on phone_contact(updated_at);
CREATE INDEX index_phone_contact_updated_by on phone_contact(updated_by);
CREATE INDEX index_phone_contact_deleted_at on phone_contact(deleted_at);
CREATE INDEX index_phone_contact_deleted_by on phone_contact(deleted_by);
CREATE INDEX index_phone_contact_locale_code on phone_contact(locale_code);
CREATE INDEX index_phone_contact_tagging on phone_contact(tagging);
CREATE INDEX index_phone_contact_name on phone_contact(name);
CREATE INDEX index_phone_contact_subname on phone_contact(subname);
CREATE INDEX index_phone_contact_sign on phone_contact(sign);
CREATE INDEX index_phone_contact_kind on phone_contact(kind);
CREATE INDEX index_phone_contact_number_text on phone_contact(number_text);
CREATE INDEX index_phone_contact_e164_text on phone_contact(e164_text);
CREATE INDEX index_phone_contact_e164_country_code on phone_contact(e164_country_code);
CREATE INDEX index_phone_contact_e164_national_destination_code on phone_contact(e164_national_destination_code);

