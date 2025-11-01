CREATE TABLE place (
);

CREATE INDEX place_id_index on place(id);
CREATE INDEX place_created_at_index on place(created_at);
CREATE INDEX place_created_by_index on place(created_by);
CREATE INDEX place_updated_at_index on place(updated_at);
CREATE INDEX place_updated_by_index on place(updated_by);
CREATE INDEX place_retired_at_index on place(retired_at);
CREATE INDEX place_retired_by_index on place(retired_by);
CREATE INDEX place_locale_code_index on place(locale_code);
CREATE INDEX place_tagging_index on place(tagging);
CREATE INDEX place_name_index on place(name);
CREATE INDEX place_subname_index on place(subname);
CREATE INDEX place_sign_index on place(sign);
CREATE INDEX place_kind_index on place(kind);
CREATE INDEX place_latitude_as_decimal_degrees_index on place(latitude_as_decimal_degrees);
CREATE INDEX place_longitude_as_decimal_degrees_index on place(longitude_as_decimal_degrees);
CREATE INDEX place_altitude_agl_as_meters_index on place(altitude_agl_as_meters);
CREATE INDEX place_altitude_msl_as_meters_index on place(altitude_msl_as_meters);
CREATE INDEX place_elevation_agl_as_meters_index on place(elevation_agl_as_meters);
CREATE INDEX place_elevation_msl_as_meters_index on place(elevation_msl_as_meters);

