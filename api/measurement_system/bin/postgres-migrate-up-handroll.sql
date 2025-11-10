CREATE TABLE measurement_system (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text,
  name text not null,
  name_phonetic text,
  name_abbreviation text,
  name_abbreviation_phonetic text
  )

CREATE INDEX measurement_system_index_gto
  ON measurement_system
  USING GIN ((
    id
      || ' ' ||
    locale_code
      || ' ' ||
    name
      || ' ' ||
    name_phonetic
      || ' ' ||
    name_abbreviation
  ) gin_trgm_ops);

CREATE INDEX measurement_system_locale_code_index ON measurement_system (locale_code);
CREATE INDEX measurement_system_name_index ON measurement_system (name);
CREATE INDEX measurement_system_name_index_tpo ON measurement_system (name text_pattern_ops);
CREATE INDEX measurement_system_name_abbreviation_index ON measurement_system (name);
