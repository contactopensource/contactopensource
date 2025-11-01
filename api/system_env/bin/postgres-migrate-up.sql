CREATE TABLE system_env (
);

CREATE INDEX index_system_env_id on system_env(id);
CREATE INDEX index_system_env_created_at on system_env(created_at);
CREATE INDEX index_system_env_created_by on system_env(created_by);
CREATE INDEX index_system_env_updated_at on system_env(updated_at);
CREATE INDEX index_system_env_updated_by on system_env(updated_by);
CREATE INDEX index_system_env_retired_at on system_env(retired_at);
CREATE INDEX index_system_env_retired_by on system_env(retired_by);
CREATE INDEX index_system_env_locale_code on system_env(locale_code);
CREATE INDEX index_system_env_tagging on system_env(tagging);
CREATE INDEX index_system_env_key on system_env(key);

