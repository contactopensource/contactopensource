CREATE TABLE meta (
);

CREATE INDEX index_meta_id on meta(id);
CREATE INDEX index_meta_created_at on meta(created_at);
CREATE INDEX index_meta_created_by on meta(created_by);
CREATE INDEX index_meta_updated_at on meta(updated_at);
CREATE INDEX index_meta_updated_by on meta(updated_by);
CREATE INDEX index_meta_retired_at on meta(retired_at);
CREATE INDEX index_meta_retired_by on meta(retired_by);
CREATE INDEX index_meta_locale_code on meta(locale_code);
CREATE INDEX index_meta_tagging on meta(tagging);

