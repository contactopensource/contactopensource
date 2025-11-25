CREATE TABLE access_operation (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT access_operation_parent_id_fk REFERENCES access_operation (id),
  parent_order int CONSTRAINT access_operation_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT access_operation_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text
);

CREATE TRIGGER trigger_access_operation_updated_at
  BEFORE UPDATE ON access_operation
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX access_operation_index_gto
  ON access_operation USING GIN ((
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
  
CREATE INDEX access_operation_created_at_index ON access_operation (created_at);
CREATE INDEX access_operation_updated_at_index ON access_operation (updated_at);
CREATE INDEX access_operation_retired_at_index ON access_operation (retired_at);
CREATE INDEX access_operation_locale_code_index ON access_operation (locale_code);
CREATE INDEX access_operation_name_index ON access_operation (name);
CREATE INDEX access_operation_name_index_tpo ON access_operation (name text_pattern_ops);
CREATE INDEX access_operation_tagging_index ON access_operation (tagging);
CREATE INDEX access_operation_tagging_index_tpo ON access_operation (tagging text_pattern_ops);
