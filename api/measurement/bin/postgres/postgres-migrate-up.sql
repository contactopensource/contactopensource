CREATE TABLE measurement (
);

CREATE INDEX measurement_id_index on measurement(id);
CREATE INDEX measurement_created_at_index on measurement(created_at);
CREATE INDEX measurement_created_by_index on measurement(created_by);
CREATE INDEX measurement_updated_at_index on measurement(updated_at);
CREATE INDEX measurement_updated_by_index on measurement(updated_by);
CREATE INDEX measurement_retired_at_index on measurement(retired_at);
CREATE INDEX measurement_retired_by_index on measurement(retired_by);
CREATE INDEX measurement_locale_code_index on measurement(locale_code);
CREATE INDEX measurement_tagging_index on measurement(tagging);

