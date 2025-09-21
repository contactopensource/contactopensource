CREATE TABLE plan_gist (
);

CREATE INDEX index_plan_gist_id on plan_gist(id);
CREATE INDEX index_plan_gist_sign on plan_gist(sign);
CREATE INDEX index_plan_gist_created_at on plan_gist(created_at);
CREATE INDEX index_plan_gist_created_by on plan_gist(created_by);
CREATE INDEX index_plan_gist_updated_at on plan_gist(updated_at);
CREATE INDEX index_plan_gist_updated_by on plan_gist(updated_by);
CREATE INDEX index_plan_gist_deleted_at on plan_gist(deleted_at);
CREATE INDEX index_plan_gist_deleted_by on plan_gist(deleted_by);
CREATE INDEX index_plan_gist_locale_id on plan_gist(locale_id);
CREATE INDEX index_plan_gist_title on plan_gist(title);
CREATE INDEX index_plan_gist_subtitle on plan_gist(subtitle);

