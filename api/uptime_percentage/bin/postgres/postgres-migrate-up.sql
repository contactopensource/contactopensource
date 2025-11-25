CREATE TABLE uptime_percentage (
);

CREATE INDEX uptime_percentage_id_index on uptime_percentage(id);
CREATE INDEX uptime_percentage_created_at_index on uptime_percentage(created_at);
CREATE INDEX uptime_percentage_created_by_index on uptime_percentage(created_by);
CREATE INDEX uptime_percentage_updated_at_index on uptime_percentage(updated_at);
CREATE INDEX uptime_percentage_updated_by_index on uptime_percentage(updated_by);
CREATE INDEX uptime_percentage_retired_at_index on uptime_percentage(retired_at);
CREATE INDEX uptime_percentage_retired_by_index on uptime_percentage(retired_by);
CREATE INDEX uptime_percentage_locale_code_index on uptime_percentage(locale_code);
CREATE INDEX uptime_percentage_tagging_index on uptime_percentage(tagging);
CREATE INDEX uptime_percentage_actual_index on uptime_percentage(actual);
CREATE INDEX uptime_percentage_target_index on uptime_percentage(target);
CREATE INDEX uptime_percentage_ratio_index on uptime_percentage(ratio);

