CREATE TABLE plan_okr (
);

CREATE INDEX plan_okr_id_index on plan_okr(id);
CREATE INDEX plan_okr_created_at_index on plan_okr(created_at);
CREATE INDEX plan_okr_created_by_index on plan_okr(created_by);
CREATE INDEX plan_okr_updated_at_index on plan_okr(updated_at);
CREATE INDEX plan_okr_updated_by_index on plan_okr(updated_by);
CREATE INDEX plan_okr_retired_at_index on plan_okr(retired_at);
CREATE INDEX plan_okr_retired_by_index on plan_okr(retired_by);
CREATE INDEX plan_okr_locale_code_index on plan_okr(locale_code);
CREATE INDEX plan_okr_tagging_index on plan_okr(tagging);
CREATE INDEX plan_okr_name_index on plan_okr(name);
CREATE INDEX plan_okr_subname_index on plan_okr(subname);
CREATE INDEX plan_okr_slug_index on plan_okr(slug);
CREATE INDEX plan_okr_sign_index on plan_okr(sign);
CREATE INDEX plan_okr_kind_index on plan_okr(kind);

