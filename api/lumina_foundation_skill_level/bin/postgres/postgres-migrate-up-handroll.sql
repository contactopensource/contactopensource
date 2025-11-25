CREATE TABLE lumina_foundation_skill_level (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  number smallint not null CONSTRAINT lumina_foundation_skill_level_number_check CHECK (number BETWEEN 1 AND 8),
  name text not null,
  description text not null
);

CREATE INDEX lumina_foundation_skill_level_name_index_gto
  ON lumina_foundation_skill_level
  USING GIN ((
    number
      || ' ' ||
    name
      || ' ' ||
    description
  ) gin_trgm_ops);

CREATE INDEX lumina_foundation_skill_level_locale_code_index ON lumina_foundation_skill_level (locale_code);
CREATE INDEX lumina_foundation_skill_level_number_index ON lumina_foundation_skill_level (number);
CREATE INDEX lumina_foundation_skill_level_name_index ON lumina_foundation_skill_level (name);
CREATE INDEX lumina_foundation_skill_level_name_index_tpo ON lumina_foundation_skill_level (name text_pattern_ops);
