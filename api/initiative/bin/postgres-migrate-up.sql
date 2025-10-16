CREATE TABLE initiative (
);

CREATE INDEX index_initiative_id on initiative(id);
CREATE INDEX index_initiative_created_at on initiative(created_at);
CREATE INDEX index_initiative_created_by on initiative(created_by);
CREATE INDEX index_initiative_updated_at on initiative(updated_at);
CREATE INDEX index_initiative_updated_by on initiative(updated_by);
CREATE INDEX index_initiative_deleted_at on initiative(deleted_at);
CREATE INDEX index_initiative_deleted_by on initiative(deleted_by);
CREATE INDEX index_initiative_locale_code on initiative(locale_code);
CREATE INDEX index_initiative_tagging on initiative(tagging);
CREATE INDEX index_initiative_name on initiative(name);
CREATE INDEX index_initiative_subname on initiative(subname);
CREATE INDEX index_initiative_sign on initiative(sign);
CREATE INDEX index_initiative_kind on initiative(kind);
CREATE INDEX index_initiative_active_users_actual on initiative(active_users_actual);
CREATE INDEX index_initiative_active_users_target on initiative(active_users_target);
CREATE INDEX index_initiative_active_users_ratio on initiative(active_users_ratio);
CREATE INDEX index_initiative_uptime_percentage_actual on initiative(uptime_percentage_actual);
CREATE INDEX index_initiative_uptime_percentage_target on initiative(uptime_percentage_target);
CREATE INDEX index_initiative_uptime_percentage_ratio on initiative(uptime_percentage_ratio);

