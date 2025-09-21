CREATE TABLE geography_point (
);

CREATE INDEX index_geography_point_id on geography_point(id);
CREATE INDEX index_geography_point_sign on geography_point(sign);
CREATE INDEX index_geography_point_created_at on geography_point(created_at);
CREATE INDEX index_geography_point_created_by on geography_point(created_by);
CREATE INDEX index_geography_point_updated_at on geography_point(updated_at);
CREATE INDEX index_geography_point_updated_by on geography_point(updated_by);
CREATE INDEX index_geography_point_deleted_at on geography_point(deleted_at);
CREATE INDEX index_geography_point_deleted_by on geography_point(deleted_by);
CREATE INDEX index_geography_point_locale_id on geography_point(locale_id);

