CREATE TABLE plan_okr (
);

CREATE INDEX index_plan_okr_id on plan_okr(id);
CREATE INDEX index_plan_okr_sign on plan_okr(sign);
CREATE INDEX index_plan_okr_created_at on plan_okr(created_at);
CREATE INDEX index_plan_okr_created_by on plan_okr(created_by);
CREATE INDEX index_plan_okr_updated_at on plan_okr(updated_at);
CREATE INDEX index_plan_okr_updated_by on plan_okr(updated_by);
CREATE INDEX index_plan_okr_deleted_at on plan_okr(deleted_at);
CREATE INDEX index_plan_okr_deleted_by on plan_okr(deleted_by);
CREATE INDEX index_plan_okr_locale_code on plan_okr(locale_code);
CREATE INDEX index_plan_okr_sign on plan_okr(sign);
CREATE INDEX index_plan_okr_kind on plan_okr(kind);
CREATE INDEX index_plan_okr_title on plan_okr(title);
CREATE INDEX index_plan_okr_subtitle on plan_okr(subtitle);

