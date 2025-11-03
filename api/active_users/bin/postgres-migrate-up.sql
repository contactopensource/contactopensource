CREATE TABLE active_users (
);

CREATE INDEX active_users_id_index on active_users(id);
CREATE INDEX active_users_created_at_index on active_users(created_at);
CREATE INDEX active_users_created_by_index on active_users(created_by);
CREATE INDEX active_users_updated_at_index on active_users(updated_at);
CREATE INDEX active_users_updated_by_index on active_users(updated_by);
CREATE INDEX active_users_retired_at_index on active_users(retired_at);
CREATE INDEX active_users_retired_by_index on active_users(retired_by);
CREATE INDEX active_users_locale_code_index on active_users(locale_code);
CREATE INDEX active_users_tagging_index on active_users(tagging);
CREATE INDEX active_users_actual_index on active_users(actual);
CREATE INDEX active_users_expect_index on active_users(expect);
CREATE INDEX active_users_ratio_index on active_users(ratio);

