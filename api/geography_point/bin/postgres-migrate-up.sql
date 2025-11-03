CREATE TABLE geography_point (
);

CREATE INDEX geography_point_id_index on geography_point(id);
CREATE INDEX geography_point_created_at_index on geography_point(created_at);
CREATE INDEX geography_point_created_by_index on geography_point(created_by);
CREATE INDEX geography_point_updated_at_index on geography_point(updated_at);
CREATE INDEX geography_point_updated_by_index on geography_point(updated_by);
CREATE INDEX geography_point_retired_at_index on geography_point(retired_at);
CREATE INDEX geography_point_retired_by_index on geography_point(retired_by);
CREATE INDEX geography_point_locale_code_index on geography_point(locale_code);
CREATE INDEX geography_point_tagging_index on geography_point(tagging);

