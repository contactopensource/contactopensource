CREATE TABLE initiative (
);

CREATE INDEX initiative_id_index on initiative(id);
CREATE INDEX initiative_created_at_index on initiative(created_at);
CREATE INDEX initiative_created_by_index on initiative(created_by);
CREATE INDEX initiative_updated_at_index on initiative(updated_at);
CREATE INDEX initiative_updated_by_index on initiative(updated_by);
CREATE INDEX initiative_retired_at_index on initiative(retired_at);
CREATE INDEX initiative_retired_by_index on initiative(retired_by);
CREATE INDEX initiative_locale_code_index on initiative(locale_code);
CREATE INDEX initiative_tagging_index on initiative(tagging);
CREATE INDEX initiative_name_index on initiative(name);
CREATE INDEX initiative_subname_index on initiative(subname);
CREATE INDEX initiative_slug_index on initiative(slug);
CREATE INDEX initiative_sign_index on initiative(sign);
CREATE INDEX initiative_kind_index on initiative(kind);
CREATE INDEX initiative_active_users_actual_index on initiative(active_users_actual);
CREATE INDEX initiative_active_users_target_index on initiative(active_users_target);
CREATE INDEX initiative_active_users_ratio_index on initiative(active_users_ratio);
CREATE INDEX initiative_uptime_percentage_actual_index on initiative(uptime_percentage_actual);
CREATE INDEX initiative_uptime_percentage_target_index on initiative(uptime_percentage_target);
CREATE INDEX initiative_uptime_percentage_ratio_index on initiative(uptime_percentage_ratio);

