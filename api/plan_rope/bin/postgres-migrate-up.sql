CREATE TABLE plan_rope (
);

CREATE INDEX index_plan_rope_id on plan_rope(id);
CREATE INDEX index_plan_rope_created_at on plan_rope(created_at);
CREATE INDEX index_plan_rope_created_by on plan_rope(created_by);
CREATE INDEX index_plan_rope_updated_at on plan_rope(updated_at);
CREATE INDEX index_plan_rope_updated_by on plan_rope(updated_by);
CREATE INDEX index_plan_rope_retired_at on plan_rope(retired_at);
CREATE INDEX index_plan_rope_retired_by on plan_rope(retired_by);
CREATE INDEX index_plan_rope_locale_code on plan_rope(locale_code);
CREATE INDEX index_plan_rope_tagging on plan_rope(tagging);
CREATE INDEX index_plan_rope_name on plan_rope(name);
CREATE INDEX index_plan_rope_subname on plan_rope(subname);
CREATE INDEX index_plan_rope_sign on plan_rope(sign);
CREATE INDEX index_plan_rope_kind on plan_rope(kind);

