CREATE TABLE user_aim_link (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  user_id uuid REFERENCES users(id) ON DELETE SET NULL,
  aim_id uuid REFERENCES aim(id) ON DELETE SET NULL,
  status text,
  tagging text
);
CREATE TRIGGER trigger_user_aim_link_updated_at
  BEFORE UPDATE ON user_aim_link
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();
CREATE INDEX user_aim_link_created_at_index ON user_aim_link (created_at);
CREATE INDEX user_aim_link_updated_at_index ON user_aim_link (updated_at);
CREATE INDEX user_aim_link_retired_at_index ON user_aim_link (retired_at);
CREATE INDEX user_aim_link_locale_code_index ON user_aim_link (locale_code);
CREATE INDEX user_aim_link_user_id_index ON user_aim_link (user_id);
CREATE INDEX user_aim_link_aim_id_index ON user_aim_link (aim_id);
