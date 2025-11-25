CREATE TABLE access_assignment (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT access_assignment_parent_id_fk REFERENCES access_assignment (id),
  parent_order int CONSTRAINT access_assignment_parent_order_check CHECK (parent_order >= 0),
  --- link
  user_id uuid NOT NULL CONSTRAINT access_assignment_user_id_fk REFERENCES users (id),
  access_attribute_id uuid NOT NULL CONSTRAINT access_assignment_access_attribute_id_fk REFERENCES access_attributes (id)
);

CREATE TRIGGER trigger_access_assignment_updated_at
  BEFORE UPDATE ON access_assignment
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX access_assignment_created_at_index ON access_assignment (created_at);
CREATE INDEX access_assignment_updated_at_index ON access_assignment (updated_at);
CREATE INDEX access_assignment_retired_at_index ON access_assignment (retired_at);
CREATE INDEX access_assignment_locale_code_index ON access_assignment (locale_code);
CREATE INDEX access_assignment_user_id_index ON access_assignment (user_id);
CREATE INDEX access_assignment_access_attribute_id_index ON access_assignment (access_attribute_id);
