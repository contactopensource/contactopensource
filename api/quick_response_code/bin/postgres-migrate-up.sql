CREATE TABLE quick_response_code (
);

CREATE INDEX quick_response_code_id_index on quick_response_code(id);
CREATE INDEX quick_response_code_created_at_index on quick_response_code(created_at);
CREATE INDEX quick_response_code_created_by_index on quick_response_code(created_by);
CREATE INDEX quick_response_code_updated_at_index on quick_response_code(updated_at);
CREATE INDEX quick_response_code_updated_by_index on quick_response_code(updated_by);
CREATE INDEX quick_response_code_retired_at_index on quick_response_code(retired_at);
CREATE INDEX quick_response_code_retired_by_index on quick_response_code(retired_by);
CREATE INDEX quick_response_code_locale_code_index on quick_response_code(locale_code);
CREATE INDEX quick_response_code_tagging_index on quick_response_code(tagging);
CREATE INDEX quick_response_code_code_index on quick_response_code(code);

