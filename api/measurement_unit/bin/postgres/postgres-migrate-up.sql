CREATE TABLE measurement_unit (
);

CREATE INDEX measurement_unit_id_index on measurement_unit(id);
CREATE INDEX measurement_unit_created_at_index on measurement_unit(created_at);
CREATE INDEX measurement_unit_created_by_index on measurement_unit(created_by);
CREATE INDEX measurement_unit_updated_at_index on measurement_unit(updated_at);
CREATE INDEX measurement_unit_updated_by_index on measurement_unit(updated_by);
CREATE INDEX measurement_unit_retired_at_index on measurement_unit(retired_at);
CREATE INDEX measurement_unit_retired_by_index on measurement_unit(retired_by);
CREATE INDEX measurement_unit_locale_code_index on measurement_unit(locale_code);
CREATE INDEX measurement_unit_tagging_index on measurement_unit(tagging);
CREATE INDEX measurement_unit_code_index on measurement_unit(code);

