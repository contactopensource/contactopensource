DROP TRIGGER IF EXISTS trigger_user_topic_link_updated_at;
DROP INDEX IF EXISTS user_topic_link_locale_code_index;
DROP INDEX IF EXISTS user_topic_link_created_at_index;
DROP INDEX IF EXISTS user_topic_link_updated_at_index;
DROP INDEX IF EXISTS user_topic_link_retired_at_index;
DROP INDEX IF EXISTS user_topic_link_user_id_index;
DROP INDEX IF EXISTS user_topic_link_topic_id_index
DROP TABLE IF EXISTS user_topic_link;
