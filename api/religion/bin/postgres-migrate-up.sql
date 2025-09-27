CREATE TABLE religion (
);

CREATE INDEX index_religion_id on religion(id);
CREATE INDEX index_religion_sign on religion(sign);
CREATE INDEX index_religion_created_at on religion(created_at);
CREATE INDEX index_religion_created_by on religion(created_by);
CREATE INDEX index_religion_updated_at on religion(updated_at);
CREATE INDEX index_religion_updated_by on religion(updated_by);
CREATE INDEX index_religion_deleted_at on religion(deleted_at);
CREATE INDEX index_religion_deleted_by on religion(deleted_by);
CREATE INDEX index_religion_locale_code on religion(locale_code);
CREATE INDEX index_religion_sign on religion(sign);
CREATE INDEX index_religion_kind on religion(kind);
CREATE INDEX index_religion_title on religion(title);
CREATE INDEX index_religion_subtitle on religion(subtitle);

