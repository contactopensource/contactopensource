CREATE TABLE plan_rope (
);

CREATE INDEX plan_rope_id_index on plan_rope(id);
CREATE INDEX plan_rope_created_at_index on plan_rope(created_at);
CREATE INDEX plan_rope_created_by_index on plan_rope(created_by);
CREATE INDEX plan_rope_updated_at_index on plan_rope(updated_at);
CREATE INDEX plan_rope_updated_by_index on plan_rope(updated_by);
CREATE INDEX plan_rope_retired_at_index on plan_rope(retired_at);
CREATE INDEX plan_rope_retired_by_index on plan_rope(retired_by);
CREATE INDEX plan_rope_locale_code_index on plan_rope(locale_code);
CREATE INDEX plan_rope_tagging_index on plan_rope(tagging);
CREATE INDEX plan_rope_name_index on plan_rope(name);
CREATE INDEX plan_rope_subname_index on plan_rope(subname);
CREATE INDEX plan_rope_slug_index on plan_rope(slug);
CREATE INDEX plan_rope_sign_index on plan_rope(sign);
CREATE INDEX plan_rope_kind_index on plan_rope(kind);

