CREATE TABLE question (
);

CREATE INDEX question_id_index on question(id);
CREATE INDEX question_created_at_index on question(created_at);
CREATE INDEX question_created_by_index on question(created_by);
CREATE INDEX question_updated_at_index on question(updated_at);
CREATE INDEX question_updated_by_index on question(updated_by);
CREATE INDEX question_retired_at_index on question(retired_at);
CREATE INDEX question_retired_by_index on question(retired_by);
CREATE INDEX question_locale_code_index on question(locale_code);
CREATE INDEX question_tagging_index on question(tagging);

