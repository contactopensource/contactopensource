CREATE TABLE user_topic_link (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  user_id uuid REFERENCES users(id) ON DELETE SET NULL,
  topic_id uuid REFERENCES topic(id) ON DELETE SET NULL,
  status text,
  tagging text
);
CREATE TRIGGER trigger_user_topic_link_updated_at
  BEFORE UPDATE ON user_topic_link
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();
CREATE INDEX user_topic_link_created_at_index ON user_topic_link (created_at);
CREATE INDEX user_topic_link_updated_at_index ON user_topic_link (updated_at);
CREATE INDEX user_topic_link_retired_at_index ON user_topic_link (retired_at);
CREATE INDEX user_topic_link_locale_code_index ON user_topic_link (locale_code);
CREATE INDEX user_topic_link_user_id_index ON user_topic_link (user_id);
CREATE INDEX user_topic_link_topic_id_index ON user_topic_link (topic_id);
