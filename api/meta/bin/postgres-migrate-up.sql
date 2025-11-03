CREATE TABLE meta (
);

CREATE INDEX meta_id_index on meta(id);
CREATE INDEX meta_created_at_index on meta(created_at);
CREATE INDEX meta_created_by_index on meta(created_by);
CREATE INDEX meta_updated_at_index on meta(updated_at);
CREATE INDEX meta_updated_by_index on meta(updated_by);
CREATE INDEX meta_retired_at_index on meta(retired_at);
CREATE INDEX meta_retired_by_index on meta(retired_by);
CREATE INDEX meta_locale_code_index on meta(locale_code);
CREATE INDEX meta_tagging_index on meta(tagging);

