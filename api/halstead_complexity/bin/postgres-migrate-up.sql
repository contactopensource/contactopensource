CREATE TABLE halstead_complexity (
);

CREATE INDEX halstead_complexity_id_index on halstead_complexity(id);
CREATE INDEX halstead_complexity_created_at_index on halstead_complexity(created_at);
CREATE INDEX halstead_complexity_created_by_index on halstead_complexity(created_by);
CREATE INDEX halstead_complexity_updated_at_index on halstead_complexity(updated_at);
CREATE INDEX halstead_complexity_updated_by_index on halstead_complexity(updated_by);
CREATE INDEX halstead_complexity_retired_at_index on halstead_complexity(retired_at);
CREATE INDEX halstead_complexity_retired_by_index on halstead_complexity(retired_by);
CREATE INDEX halstead_complexity_locale_code_index on halstead_complexity(locale_code);
CREATE INDEX halstead_complexity_tagging_index on halstead_complexity(tagging);

