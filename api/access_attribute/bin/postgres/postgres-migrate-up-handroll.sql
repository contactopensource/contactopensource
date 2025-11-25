CREATE TABLE access_attribute (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT access_attribute_parent_id_fk REFERENCES access_attribute (id),
  parent_order int CONSTRAINT access_attribute_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT access_attribute_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text
);

CREATE TRIGGER trigger_access_attribute_updated_at
  BEFORE UPDATE ON access_attribute
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX access_attribute_index_gto
  ON access_attribute USING GIN ((
    sign
      || ' ' ||
    name
      || ' ' ||
    status
      || ' ' ||
    tagging
      || ' ' ||
    note
  ) gin_trgm_ops);
  
CREATE INDEX access_attribute_created_at_index ON access_attribute (created_at);
CREATE INDEX access_attribute_updated_at_index ON access_attribute (updated_at);
CREATE INDEX access_attribute_retired_at_index ON access_attribute (retired_at);
CREATE INDEX access_attribute_locale_code_index ON access_attribute (locale_code);
CREATE INDEX access_attribute_name_index ON access_attribute (name);
CREATE INDEX access_attribute_name_index_tpo ON access_attribute (name text_pattern_ops);
CREATE INDEX access_attribute_tagging_index ON access_attribute (tagging);
CREATE INDEX access_attribute_tagging_index_tpo ON access_attribute (tagging text_pattern_ops);
