CREATE TABLE measurement_system (
);

CREATE INDEX index_measurement_system_id on measurement_system(id);
CREATE INDEX index_measurement_system_created_at on measurement_system(created_at);
CREATE INDEX index_measurement_system_created_by on measurement_system(created_by);
CREATE INDEX index_measurement_system_updated_at on measurement_system(updated_at);
CREATE INDEX index_measurement_system_updated_by on measurement_system(updated_by);
CREATE INDEX index_measurement_system_retired_at on measurement_system(retired_at);
CREATE INDEX index_measurement_system_retired_by on measurement_system(retired_by);
CREATE INDEX index_measurement_system_locale_code on measurement_system(locale_code);
CREATE INDEX index_measurement_system_tagging on measurement_system(tagging);
CREATE INDEX index_measurement_system_key on measurement_system(key);
CREATE INDEX index_measurement_system_formal_name on measurement_system(formal_name);

