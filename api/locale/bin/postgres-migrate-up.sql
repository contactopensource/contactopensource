CREATE TABLE locale (
);

CREATE INDEX locale_id_index on locale(id);
CREATE INDEX locale_created_at_index on locale(created_at);
CREATE INDEX locale_created_by_index on locale(created_by);
CREATE INDEX locale_updated_at_index on locale(updated_at);
CREATE INDEX locale_updated_by_index on locale(updated_by);
CREATE INDEX locale_retired_at_index on locale(retired_at);
CREATE INDEX locale_retired_by_index on locale(retired_by);
CREATE INDEX locale_locale_code_index on locale(locale_code);
CREATE INDEX locale_tagging_index on locale(tagging);

