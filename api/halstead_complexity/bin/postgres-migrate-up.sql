CREATE TABLE halstead_complexity (
);

CREATE INDEX index_halstead_complexity_id on halstead_complexity(id);
CREATE INDEX index_halstead_complexity_created_at on halstead_complexity(created_at);
CREATE INDEX index_halstead_complexity_created_by on halstead_complexity(created_by);
CREATE INDEX index_halstead_complexity_updated_at on halstead_complexity(updated_at);
CREATE INDEX index_halstead_complexity_updated_by on halstead_complexity(updated_by);
CREATE INDEX index_halstead_complexity_retired_at on halstead_complexity(retired_at);
CREATE INDEX index_halstead_complexity_retired_by on halstead_complexity(retired_by);
CREATE INDEX index_halstead_complexity_locale_code on halstead_complexity(locale_code);
CREATE INDEX index_halstead_complexity_tagging on halstead_complexity(tagging);

