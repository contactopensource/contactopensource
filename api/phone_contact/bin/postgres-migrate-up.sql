CREATE TABLE phone_contact (
);

CREATE INDEX index_phone_contact_id on phone_contact(id);
CREATE INDEX index_phone_contact_zid on phone_contact(zid);
CREATE INDEX index_phone_contact_title on phone_contact(title);
CREATE INDEX index_phone_contact_subtitle on phone_contact(subtitle);
CREATE INDEX index_phone_contact_number_text on phone_contact(number_text);
CREATE INDEX index_phone_contact_e164_text on phone_contact(e164_text);
CREATE INDEX index_phone_contact_e164_country_code on phone_contact(e164_country_code);
CREATE INDEX index_phone_contact_e164_national_destination_code on phone_contact(e164_national_destination_code);

