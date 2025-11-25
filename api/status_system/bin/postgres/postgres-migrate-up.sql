CREATE TABLE status_system (
);

CREATE INDEX status_system_id_index on status_system(id);
CREATE INDEX status_system_created_at_index on status_system(created_at);
CREATE INDEX status_system_created_by_index on status_system(created_by);
CREATE INDEX status_system_updated_at_index on status_system(updated_at);
CREATE INDEX status_system_updated_by_index on status_system(updated_by);
CREATE INDEX status_system_retired_at_index on status_system(retired_at);
CREATE INDEX status_system_retired_by_index on status_system(retired_by);
CREATE INDEX status_system_locale_code_index on status_system(locale_code);
CREATE INDEX status_system_tagging_index on status_system(tagging);
CREATE INDEX status_system_key_index on status_system(key);
CREATE INDEX status_system_formal_name_index on status_system(formal_name);

