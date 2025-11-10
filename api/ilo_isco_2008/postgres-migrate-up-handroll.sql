CREATE TABLE ilo_isco_2008 (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  code text not null CONSTRAINT ilo_isco_2008_code_check CHECK (code ~* '^[0-9]*$' AND char_length(code) <= 4),
  name text not null,
  definition_as_markdown text not null
);

CREATE INDEX ilo_isco_2008_index_gto
  ON ilo_isco_2008
  USING GIN ((
    code
      || ' ' ||
    name
      || ' ' ||
    definition_as_markdown
  ) gin_trgm_ops);

CREATE INDEX ilo_isco_2008_locale_code_index ON ilo_isco_2008 (locale_code);
CREATE INDEX ilo_isco_2008_code_index ON ilo_isco_2008 (code);
CREATE INDEX ilo_isco_2008_code_index_tpo ON ilo_isco_2008 (code text_pattern_ops);
CREATE INDEX ilo_isco_2008_name_index ON ilo_isco_2008 (name);
CREATE INDEX ilo_isco_2008_name_index_tpo ON ilo_isco_2008 (name text_pattern_ops);
