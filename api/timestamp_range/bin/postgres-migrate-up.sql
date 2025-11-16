CREATE TABLE timestamp_range (
);

CREATE INDEX timestamp_range_id_index on timestamp_range(id);
CREATE INDEX timestamp_range_created_at_index on timestamp_range(created_at);
CREATE INDEX timestamp_range_created_by_index on timestamp_range(created_by);
CREATE INDEX timestamp_range_updated_at_index on timestamp_range(updated_at);
CREATE INDEX timestamp_range_updated_by_index on timestamp_range(updated_by);
CREATE INDEX timestamp_range_retired_at_index on timestamp_range(retired_at);
CREATE INDEX timestamp_range_retired_by_index on timestamp_range(retired_by);
CREATE INDEX timestamp_range_locale_code_index on timestamp_range(locale_code);
CREATE INDEX timestamp_range_tagging_index on timestamp_range(tagging);
CREATE INDEX timestamp_range_name_index on timestamp_range(name);
CREATE INDEX timestamp_range_subname_index on timestamp_range(subname);
CREATE INDEX timestamp_range_slug_index on timestamp_range(slug);
CREATE INDEX timestamp_range_sign_index on timestamp_range(sign);
CREATE INDEX timestamp_range_kind_index on timestamp_range(kind);

