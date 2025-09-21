CREATE TABLE meta (
);

CREATE INDEX index_meta_id on meta(id);
CREATE INDEX index_meta_sign on meta(sign);
CREATE INDEX index_meta_created_at on meta(created_at);
CREATE INDEX index_meta_created_by on meta(created_by);
CREATE INDEX index_meta_updated_at on meta(updated_at);
CREATE INDEX index_meta_updated_by on meta(updated_by);
CREATE INDEX index_meta_deleted_at on meta(deleted_at);
CREATE INDEX index_meta_deleted_by on meta(deleted_by);
CREATE INDEX index_meta_locale_id on meta(locale_id);

