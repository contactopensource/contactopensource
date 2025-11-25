CREATE TABLE access_permission (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT access_permission_parent_id_fk REFERENCES access_permission (id),
  parent_order int CONSTRAINT access_permission_parent_order_check CHECK (parent_order >= 0),
  --- link
  access_attribute_id uuid NOT NULL CONSTRAINT access_permission_access_attribute_id_fk REFERENCES access_attributes (id),
  access_operation_id uuid NOT NULL CONSTRAINT access_permission_access_operation_id_fk REFERENCES access_operations (id)
);

CREATE TRIGGER trigger_access_permission_updated_at
  BEFORE UPDATE ON access_permission
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX access_permission_created_at_index ON access_permission (created_at);
CREATE INDEX access_permission_updated_at_index ON access_permission (updated_at);
CREATE INDEX access_permission_retired_at_index ON access_permission (retired_at);
CREATE INDEX access_permission_locale_code_index ON access_permission (locale_code);
CREATE INDEX access_permission_access_attribute_id_index ON access_permission (access_attribute_id);
CREATE INDEX access_permission_access_operation_id_index ON access_permission (access_operation_id);
