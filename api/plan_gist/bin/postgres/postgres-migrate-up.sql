CREATE TABLE plan_gist (
);

CREATE INDEX plan_gist_id_index on plan_gist(id);
CREATE INDEX plan_gist_created_at_index on plan_gist(created_at);
CREATE INDEX plan_gist_created_by_index on plan_gist(created_by);
CREATE INDEX plan_gist_updated_at_index on plan_gist(updated_at);
CREATE INDEX plan_gist_updated_by_index on plan_gist(updated_by);
CREATE INDEX plan_gist_retired_at_index on plan_gist(retired_at);
CREATE INDEX plan_gist_retired_by_index on plan_gist(retired_by);
CREATE INDEX plan_gist_locale_code_index on plan_gist(locale_code);
CREATE INDEX plan_gist_tagging_index on plan_gist(tagging);
CREATE INDEX plan_gist_name_index on plan_gist(name);
CREATE INDEX plan_gist_subname_index on plan_gist(subname);
CREATE INDEX plan_gist_slug_index on plan_gist(slug);
CREATE INDEX plan_gist_sign_index on plan_gist(sign);
CREATE INDEX plan_gist_kind_index on plan_gist(kind);

