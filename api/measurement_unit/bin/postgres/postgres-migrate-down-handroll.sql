DROP INDEX IF EXISTS measurement_unit_index_gto
DROP INDEX IF EXISTS measurement_unit_locale_code_index;
DROP INDEX IF EXISTS measurement_unit_measurement_system_id_index;
DROP INDEX IF EXISTS measurement_unit_name_index;
DROP INDEX IF EXISTS measurement_unit_name_index_tpo
DROP INDEX IF EXISTS measurement_unit_category_index
DROP INDEX IF EXISTS measurement_unit_property_index
DROP TABLE IF EXISTS measurement_unit;

CREATE INDEX measurement_system_id_index ON measurement_units (measurement_system_id);
CREATE INDEX measurement_units_locale_code_index ON measurement_units (locale_code);
CREATE INDEX measurement_units_name_index ON measurement_units (name);
CREATE INDEX measurement_units_name_index_tpo ON measurement_units (name text_pattern_ops);
CREATE INDEX measurement_units_category_index ON measurement_units (category);
CREATE INDEX measurement_units_property_index ON measurement_units (loinc_property);
