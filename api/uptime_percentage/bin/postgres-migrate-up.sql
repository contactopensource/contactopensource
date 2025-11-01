CREATE TABLE uptime_percentage (
);

CREATE INDEX index_uptime_percentage_id on uptime_percentage(id);
CREATE INDEX index_uptime_percentage_created_at on uptime_percentage(created_at);
CREATE INDEX index_uptime_percentage_created_by on uptime_percentage(created_by);
CREATE INDEX index_uptime_percentage_updated_at on uptime_percentage(updated_at);
CREATE INDEX index_uptime_percentage_updated_by on uptime_percentage(updated_by);
CREATE INDEX index_uptime_percentage_retired_at on uptime_percentage(retired_at);
CREATE INDEX index_uptime_percentage_retired_by on uptime_percentage(retired_by);
CREATE INDEX index_uptime_percentage_locale_code on uptime_percentage(locale_code);
CREATE INDEX index_uptime_percentage_tagging on uptime_percentage(tagging);
CREATE INDEX index_uptime_percentage_actual on uptime_percentage(actual);
CREATE INDEX index_uptime_percentage_target on uptime_percentage(target);
CREATE INDEX index_uptime_percentage_ratio on uptime_percentage(ratio);

