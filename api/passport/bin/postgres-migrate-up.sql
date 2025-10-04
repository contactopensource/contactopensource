CREATE TABLE passport (
);

CREATE INDEX index_passport_id on passport(id);
CREATE INDEX index_passport_created_at on passport(created_at);
CREATE INDEX index_passport_created_by on passport(created_by);
CREATE INDEX index_passport_updated_at on passport(updated_at);
CREATE INDEX index_passport_updated_by on passport(updated_by);
CREATE INDEX index_passport_deleted_at on passport(deleted_at);
CREATE INDEX index_passport_deleted_by on passport(deleted_by);
CREATE INDEX index_passport_locale_code on passport(locale_code);
CREATE INDEX index_passport_sign on passport(sign);
CREATE INDEX index_passport_kind on passport(kind);
CREATE INDEX index_passport_name on passport(name);
CREATE INDEX index_passport_subname on passport(subname);
CREATE INDEX index_passport_number_text on passport(number_text);

