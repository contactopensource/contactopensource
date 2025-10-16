CREATE TABLE measurement_unit (
);

CREATE INDEX index_measurement_unit_id on measurement_unit(id);
CREATE INDEX index_measurement_unit_created_at on measurement_unit(created_at);
CREATE INDEX index_measurement_unit_created_by on measurement_unit(created_by);
CREATE INDEX index_measurement_unit_updated_at on measurement_unit(updated_at);
CREATE INDEX index_measurement_unit_updated_by on measurement_unit(updated_by);
CREATE INDEX index_measurement_unit_deleted_at on measurement_unit(deleted_at);
CREATE INDEX index_measurement_unit_deleted_by on measurement_unit(deleted_by);
CREATE INDEX index_measurement_unit_locale_code on measurement_unit(locale_code);
CREATE INDEX index_measurement_unit_tagging on measurement_unit(tagging);

