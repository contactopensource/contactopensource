CREATE TABLE measurement_device (
);

CREATE INDEX measurement_device_id_index on measurement_device(id);
CREATE INDEX measurement_device_created_at_index on measurement_device(created_at);
CREATE INDEX measurement_device_created_by_index on measurement_device(created_by);
CREATE INDEX measurement_device_updated_at_index on measurement_device(updated_at);
CREATE INDEX measurement_device_updated_by_index on measurement_device(updated_by);
CREATE INDEX measurement_device_retired_at_index on measurement_device(retired_at);
CREATE INDEX measurement_device_retired_by_index on measurement_device(retired_by);
CREATE INDEX measurement_device_locale_code_index on measurement_device(locale_code);
CREATE INDEX measurement_device_tagging_index on measurement_device(tagging);

