CREATE TABLE measurement_units (
  id text PRIMARY KEY,
  locale_code text,
  name text not null,
  name_phonetic text,
  category text,
  synonyms text,
  loinc_property text,
  guidance text,
  measurement_system_id uuid CONSTRAINT measurement_units_measurement_system_id_fk REFERENCES measurement_systems (id)
  )

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
    loinc_property
      || ' ' ||
    guidance
  ) gin_trgm_ops);

CREATE INDEX measurement_units_locale_code_index ON measurement_units (locale_code);
CREATE INDEX measurement_units_name_index ON measurement_units (name);
CREATE INDEX measurement_units_name_index_tpo ON measurement_units (name text_pattern_ops);
CREATE INDEX measurement_units_category_index ON measurement_units (category);
CREATE INDEX measurement_units_loinc_property_index ON measurement_units (loinc_property);
