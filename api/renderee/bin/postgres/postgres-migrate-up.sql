CREATE TABLE renderee (
);

CREATE INDEX renderee_id_index on renderee(id);
CREATE INDEX renderee_created_at_index on renderee(created_at);
CREATE INDEX renderee_created_by_index on renderee(created_by);
CREATE INDEX renderee_updated_at_index on renderee(updated_at);
CREATE INDEX renderee_updated_by_index on renderee(updated_by);
CREATE INDEX renderee_retired_at_index on renderee(retired_at);
CREATE INDEX renderee_retired_by_index on renderee(retired_by);
CREATE INDEX renderee_locale_code_index on renderee(locale_code);
CREATE INDEX renderee_tagging_index on renderee(tagging);

