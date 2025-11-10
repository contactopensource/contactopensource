CREATE TABLE message (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT message_parent_id_fk REFERENCES message (id),
  parent_order int CONSTRAINT message_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT message_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- link
  from_user_id uuid CONSTRAINT message_from_user_id_fk REFERENCES users (id),
  to_user_id uuid CONSTRAINT message_to_user_id_fk REFERENCES users (id)
);

CREATE TRIGGER trigger_message_updated_at
  BEFORE UPDATE ON message
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX message_index_gto
  ON message
  USING GIN ((
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

CREATE INDEX message_created_at_index ON message (created_at);
CREATE INDEX message_updated_at_index ON message (updated_at);
CREATE INDEX message_retired_at_index ON message (retired_at);
CREATE INDEX message_locale_code_index ON message (locale_code);
CREATE INDEX message_name_index ON message (name);
CREATE INDEX message_name_index_tpo ON message (name text_pattern_ops);
CREATE INDEX message_tagging_index ON message (tagging);
CREATE INDEX message_tagging_index_tpo ON message (tagging text_pattern_ops);
