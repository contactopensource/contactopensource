CREATE TABLE status_system (
);

CREATE INDEX index_status_system_id on status_system(id);
CREATE INDEX index_status_system_created_at on status_system(created_at);
CREATE INDEX index_status_system_created_by on status_system(created_by);
CREATE INDEX index_status_system_updated_at on status_system(updated_at);
CREATE INDEX index_status_system_updated_by on status_system(updated_by);
CREATE INDEX index_status_system_deleted_at on status_system(deleted_at);
CREATE INDEX index_status_system_deleted_by on status_system(deleted_by);
CREATE INDEX index_status_system_locale_code on status_system(locale_code);
CREATE INDEX index_status_system_tagging on status_system(tagging);
CREATE INDEX index_status_system_key on status_system(key);
CREATE INDEX index_status_system_formal_name on status_system(formal_name);

