CREATE TABLE geographic_area (
);

CREATE INDEX index_geographic_area_id on geographic_area(id);
CREATE INDEX index_geographic_area_created_at on geographic_area(created_at);
CREATE INDEX index_geographic_area_created_by on geographic_area(created_by);
CREATE INDEX index_geographic_area_updated_at on geographic_area(updated_at);
CREATE INDEX index_geographic_area_updated_by on geographic_area(updated_by);
CREATE INDEX index_geographic_area_deleted_at on geographic_area(deleted_at);
CREATE INDEX index_geographic_area_deleted_by on geographic_area(deleted_by);
CREATE INDEX index_geographic_area_locale_code on geographic_area(locale_code);
CREATE INDEX index_geographic_area_tagging on geographic_area(tagging);
CREATE INDEX index_geographic_area_name on geographic_area(name);
CREATE INDEX index_geographic_area_subname on geographic_area(subname);
CREATE INDEX index_geographic_area_sign on geographic_area(sign);
CREATE INDEX index_geographic_area_kind on geographic_area(kind);

