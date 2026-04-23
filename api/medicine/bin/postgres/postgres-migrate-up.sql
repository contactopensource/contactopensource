CREATE TABLE medicine (
);

CREATE INDEX medicine_id_index on medicine(id);
CREATE INDEX medicine_created_at_index on medicine(created_at);
CREATE INDEX medicine_created_by_index on medicine(created_by);
CREATE INDEX medicine_updated_at_index on medicine(updated_at);
CREATE INDEX medicine_updated_by_index on medicine(updated_by);
CREATE INDEX medicine_retired_at_index on medicine(retired_at);
CREATE INDEX medicine_retired_by_index on medicine(retired_by);
CREATE INDEX medicine_locale_code_index on medicine(locale_code);
CREATE INDEX medicine_tagging_index on medicine(tagging);

