CREATE TABLE measurement_units (
  id text PRIMARY KEY,
  locale_code text,
  measurement_system_id uuid CONSTRAINT measurement_units_measurement_system_id_fk REFERENCES measurement_systems (id)
  code text not null,
  name text not null,
  name_phonetic text,
  synonyms text,
  category text,
  property text,
  guidance text,
);
   
CREATE INDEX measurement_units_index_gto
  ON measurement_units
  USING GIN ((
    id
      || ' ' ||
    locale_code
      || ' ' ||
    name
      || ' ' ||
    name_phonetic
      || ' ' ||
    category
      || ' ' ||
    synonyms
      || ' ' ||
    property
      || ' ' ||
    guidance
  ) gin_trgm_ops);

CREATE INDEX measurement_system_id_index ON measurement_units (measurement_system_id);
CREATE INDEX measurement_units_locale_code_index ON measurement_units (locale_code);
CREATE INDEX measurement_units_name_index ON measurement_units (name);
CREATE INDEX measurement_units_name_index_tpo ON measurement_units (name text_pattern_ops);
CREATE INDEX measurement_units_category_index ON measurement_units (category);
CREATE INDEX measurement_units_property_index ON measurement_units (loinc_property);
