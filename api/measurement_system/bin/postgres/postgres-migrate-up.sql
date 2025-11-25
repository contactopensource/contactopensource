CREATE TABLE measurement_system (
);

CREATE INDEX measurement_system_id_index on measurement_system(id);
CREATE INDEX measurement_system_created_at_index on measurement_system(created_at);
CREATE INDEX measurement_system_created_by_index on measurement_system(created_by);
CREATE INDEX measurement_system_updated_at_index on measurement_system(updated_at);
CREATE INDEX measurement_system_updated_by_index on measurement_system(updated_by);
CREATE INDEX measurement_system_retired_at_index on measurement_system(retired_at);
CREATE INDEX measurement_system_retired_by_index on measurement_system(retired_by);
CREATE INDEX measurement_system_locale_code_index on measurement_system(locale_code);
CREATE INDEX measurement_system_tagging_index on measurement_system(tagging);
CREATE INDEX measurement_system_key_index on measurement_system(key);
CREATE INDEX measurement_system_formal_name_index on measurement_system(formal_name);

