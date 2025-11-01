CREATE TABLE sipoc (
);

CREATE INDEX index_sipoc_id on sipoc(id);
CREATE INDEX index_sipoc_created_at on sipoc(created_at);
CREATE INDEX index_sipoc_created_by on sipoc(created_by);
CREATE INDEX index_sipoc_updated_at on sipoc(updated_at);
CREATE INDEX index_sipoc_updated_by on sipoc(updated_by);
CREATE INDEX index_sipoc_retired_at on sipoc(retired_at);
CREATE INDEX index_sipoc_retired_by on sipoc(retired_by);
CREATE INDEX index_sipoc_locale_code on sipoc(locale_code);
CREATE INDEX index_sipoc_tagging on sipoc(tagging);

