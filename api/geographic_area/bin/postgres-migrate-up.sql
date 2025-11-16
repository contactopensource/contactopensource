CREATE TABLE geographic_area (
);

CREATE INDEX geographic_area_id_index on geographic_area(id);
CREATE INDEX geographic_area_created_at_index on geographic_area(created_at);
CREATE INDEX geographic_area_created_by_index on geographic_area(created_by);
CREATE INDEX geographic_area_updated_at_index on geographic_area(updated_at);
CREATE INDEX geographic_area_updated_by_index on geographic_area(updated_by);
CREATE INDEX geographic_area_retired_at_index on geographic_area(retired_at);
CREATE INDEX geographic_area_retired_by_index on geographic_area(retired_by);
CREATE INDEX geographic_area_locale_code_index on geographic_area(locale_code);
CREATE INDEX geographic_area_tagging_index on geographic_area(tagging);
CREATE INDEX geographic_area_name_index on geographic_area(name);
CREATE INDEX geographic_area_subname_index on geographic_area(subname);
CREATE INDEX geographic_area_slug_index on geographic_area(slug);
CREATE INDEX geographic_area_sign_index on geographic_area(sign);
CREATE INDEX geographic_area_kind_index on geographic_area(kind);

