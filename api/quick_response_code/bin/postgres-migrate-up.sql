CREATE TABLE quick_response_code (
);

CREATE INDEX index_quick_response_code_id on quick_response_code(id);
CREATE INDEX index_quick_response_code_created_at on quick_response_code(created_at);
CREATE INDEX index_quick_response_code_created_by on quick_response_code(created_by);
CREATE INDEX index_quick_response_code_updated_at on quick_response_code(updated_at);
CREATE INDEX index_quick_response_code_updated_by on quick_response_code(updated_by);
CREATE INDEX index_quick_response_code_retired_at on quick_response_code(retired_at);
CREATE INDEX index_quick_response_code_retired_by on quick_response_code(retired_by);
CREATE INDEX index_quick_response_code_locale_code on quick_response_code(locale_code);
CREATE INDEX index_quick_response_code_tagging on quick_response_code(tagging);
CREATE INDEX index_quick_response_code_code on quick_response_code(code);

