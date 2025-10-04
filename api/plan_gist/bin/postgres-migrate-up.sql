CREATE TABLE plan_gist (
);

CREATE INDEX index_plan_gist_id on plan_gist(id);
CREATE INDEX index_plan_gist_created_at on plan_gist(created_at);
CREATE INDEX index_plan_gist_created_by on plan_gist(created_by);
CREATE INDEX index_plan_gist_updated_at on plan_gist(updated_at);
CREATE INDEX index_plan_gist_updated_by on plan_gist(updated_by);
CREATE INDEX index_plan_gist_deleted_at on plan_gist(deleted_at);
CREATE INDEX index_plan_gist_deleted_by on plan_gist(deleted_by);
CREATE INDEX index_plan_gist_locale_code on plan_gist(locale_code);
CREATE INDEX index_plan_gist_sign on plan_gist(sign);
CREATE INDEX index_plan_gist_kind on plan_gist(kind);
CREATE INDEX index_plan_gist_name on plan_gist(name);
CREATE INDEX index_plan_gist_subname on plan_gist(subname);

