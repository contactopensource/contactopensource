CREATE TABLE quick_response_code (
);

CREATE INDEX index_quick_response_code_id on quick_response_code(id);
CREATE INDEX index_quick_response_code_sign on quick_response_code(sign);
CREATE INDEX index_quick_response_code_created_at on quick_response_code(created_at);
CREATE INDEX index_quick_response_code_created_by on quick_response_code(created_by);
CREATE INDEX index_quick_response_code_updated_at on quick_response_code(updated_at);
CREATE INDEX index_quick_response_code_updated_by on quick_response_code(updated_by);
CREATE INDEX index_quick_response_code_deleted_at on quick_response_code(deleted_at);
CREATE INDEX index_quick_response_code_deleted_by on quick_response_code(deleted_by);
CREATE INDEX index_quick_response_code_locale_id on quick_response_code(locale_id);
CREATE INDEX index_quick_response_code_code on quick_response_code(code);

