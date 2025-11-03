CREATE TABLE sipoc (
);

CREATE INDEX sipoc_id_index on sipoc(id);
CREATE INDEX sipoc_created_at_index on sipoc(created_at);
CREATE INDEX sipoc_created_by_index on sipoc(created_by);
CREATE INDEX sipoc_updated_at_index on sipoc(updated_at);
CREATE INDEX sipoc_updated_by_index on sipoc(updated_by);
CREATE INDEX sipoc_retired_at_index on sipoc(retired_at);
CREATE INDEX sipoc_retired_by_index on sipoc(retired_by);
CREATE INDEX sipoc_locale_code_index on sipoc(locale_code);
CREATE INDEX sipoc_tagging_index on sipoc(tagging);

