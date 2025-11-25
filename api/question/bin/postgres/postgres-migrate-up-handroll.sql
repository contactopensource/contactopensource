CREATE TABLE question (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT question_parent_id_fk REFERENCES question (id),
  parent_order int CONSTRAINT question_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT question_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  --- content
  description_as_markdown text
);

CREATE TRIGGER trigger_question_updated_at
  BEFORE UPDATE ON question
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX question_index_gto
  ON question USING GIN ((
    sign
      || ' ' ||
    name
      || ' ' ||
    status
      || ' ' ||
    tagging
      || ' ' ||
    note
      || ' ' ||
    description
  ) gin_trgm_ops);
  
CREATE INDEX question_created_at_index ON question (created_at);
CREATE INDEX question_updated_at_index ON question (updated_at);
CREATE INDEX question_retired_at_index ON question (retired_at);
CREATE INDEX question_locale_code_index ON question (locale_code);
CREATE INDEX question_name_index ON question (name);
CREATE INDEX question_name_index_tpo ON question (name text_pattern_ops);
CREATE INDEX question_tagging_index ON question (tagging);
CREATE INDEX question_tagging_index_tpo ON question (tagging text_pattern_ops);
CREATE INDEX question_description_index ON question (description);
CREATE INDEX question_description_index_tpo ON question (description text_pattern_ops);
