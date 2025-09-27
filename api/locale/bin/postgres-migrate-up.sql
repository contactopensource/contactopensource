CREATE TABLE locale (
);

CREATE INDEX index_locale_id on locale(id);
CREATE INDEX index_locale_sign on locale(sign);
CREATE INDEX index_locale_created_at on locale(created_at);
CREATE INDEX index_locale_created_by on locale(created_by);
CREATE INDEX index_locale_updated_at on locale(updated_at);
CREATE INDEX index_locale_updated_by on locale(updated_by);
CREATE INDEX index_locale_deleted_at on locale(deleted_at);
CREATE INDEX index_locale_deleted_by on locale(deleted_by);
CREATE INDEX index_locale_locale_code on locale(locale_code);

