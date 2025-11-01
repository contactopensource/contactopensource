CREATE TABLE geography_point (
);

CREATE INDEX index_geography_point_id on geography_point(id);
CREATE INDEX index_geography_point_created_at on geography_point(created_at);
CREATE INDEX index_geography_point_created_by on geography_point(created_by);
CREATE INDEX index_geography_point_updated_at on geography_point(updated_at);
CREATE INDEX index_geography_point_updated_by on geography_point(updated_by);
CREATE INDEX index_geography_point_retired_at on geography_point(retired_at);
CREATE INDEX index_geography_point_retired_by on geography_point(retired_by);
CREATE INDEX index_geography_point_locale_code on geography_point(locale_code);
CREATE INDEX index_geography_point_tagging on geography_point(tagging);

