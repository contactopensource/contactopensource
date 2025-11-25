CREATE TABLE system_env (
);

CREATE INDEX system_env_id_index on system_env(id);
CREATE INDEX system_env_created_at_index on system_env(created_at);
CREATE INDEX system_env_created_by_index on system_env(created_by);
CREATE INDEX system_env_updated_at_index on system_env(updated_at);
CREATE INDEX system_env_updated_by_index on system_env(updated_by);
CREATE INDEX system_env_retired_at_index on system_env(retired_at);
CREATE INDEX system_env_retired_by_index on system_env(retired_by);
CREATE INDEX system_env_locale_code_index on system_env(locale_code);
CREATE INDEX system_env_tagging_index on system_env(tagging);
CREATE INDEX system_env_key_index on system_env(key);

