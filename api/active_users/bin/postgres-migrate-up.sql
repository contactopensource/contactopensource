CREATE TABLE active_users (
);

CREATE INDEX index_active_users_id on active_users(id);
CREATE INDEX index_active_users_created_at on active_users(created_at);
CREATE INDEX index_active_users_created_by on active_users(created_by);
CREATE INDEX index_active_users_updated_at on active_users(updated_at);
CREATE INDEX index_active_users_updated_by on active_users(updated_by);
CREATE INDEX index_active_users_retired_at on active_users(retired_at);
CREATE INDEX index_active_users_retired_by on active_users(retired_by);
CREATE INDEX index_active_users_locale_code on active_users(locale_code);
CREATE INDEX index_active_users_tagging on active_users(tagging);
CREATE INDEX index_active_users_actual on active_users(actual);
CREATE INDEX index_active_users_expect on active_users(expect);
CREATE INDEX index_active_users_ratio on active_users(ratio);

