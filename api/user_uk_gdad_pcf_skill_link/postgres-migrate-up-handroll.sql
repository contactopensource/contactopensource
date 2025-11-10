CREATE TABLE user_uk_gdad_pcf_skill_link (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  user_id uuid REFERENCES users(id) ON DELETE SET NULL,
  uk_gdad_pcf_skill_id uuid REFERENCES uk_gdad_pcf_skill(id) ON DELETE SET NULL,
  status text,
  tagging text
);
CREATE TRIGGER trigger_user_uk_gdad_pcf_skill_link_updated_at
  BEFORE UPDATE ON user_uk_gdad_pcf_skill_link
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();
CREATE INDEX user_uk_gdad_pcf_skill_link_created_at_index ON user_uk_gdad_pcf_skill_link (created_at);
CREATE INDEX user_uk_gdad_pcf_skill_link_updated_at_index ON user_uk_gdad_pcf_skill_link (updated_at);
CREATE INDEX user_uk_gdad_pcf_skill_link_retired_at_index ON user_uk_gdad_pcf_skill_link (retired_at);
CREATE INDEX user_uk_gdad_pcf_skill_link_locale_code_index ON user_uk_gdad_pcf_skill_link (locale_code);
CREATE INDEX user_uk_gdad_pcf_skill_link_user_id_index ON user_uk_gdad_pcf_skill_link (user_id);
CREATE INDEX user_uk_gdad_pcf_skill_link_uk_gdad_pcf_skill_id_index ON user_uk_gdad_pcf_skill_link (uk_gdad_pcf_skill_id);
