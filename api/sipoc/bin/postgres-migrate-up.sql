CREATE TABLE sipoc (
);

CREATE INDEX index_sipoc_id on sipoc(id);
CREATE INDEX index_sipoc_created_at on sipoc(created_at);
CREATE INDEX index_sipoc_created_by on sipoc(created_by);
CREATE INDEX index_sipoc_updated_at on sipoc(updated_at);
CREATE INDEX index_sipoc_updated_by on sipoc(updated_by);
CREATE INDEX index_sipoc_deleted_at on sipoc(deleted_at);
CREATE INDEX index_sipoc_deleted_by on sipoc(deleted_by);
CREATE INDEX index_sipoc_locale_code on sipoc(locale_code);
CREATE INDEX index_sipoc_tagging on sipoc(tagging);

