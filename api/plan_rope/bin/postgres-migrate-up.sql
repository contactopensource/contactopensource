CREATE TABLE plan_rope (
);

CREATE INDEX index_plan_rope_id on plan_rope(id);
CREATE INDEX index_plan_rope_sign on plan_rope(sign);
CREATE INDEX index_plan_rope_created_at on plan_rope(created_at);
CREATE INDEX index_plan_rope_created_by on plan_rope(created_by);
CREATE INDEX index_plan_rope_updated_at on plan_rope(updated_at);
CREATE INDEX index_plan_rope_updated_by on plan_rope(updated_by);
CREATE INDEX index_plan_rope_deleted_at on plan_rope(deleted_at);
CREATE INDEX index_plan_rope_deleted_by on plan_rope(deleted_by);
CREATE INDEX index_plan_rope_locale_code on plan_rope(locale_code);
CREATE INDEX index_plan_rope_sign on plan_rope(sign);
CREATE INDEX index_plan_rope_kind on plan_rope(kind);
CREATE INDEX index_plan_rope_title on plan_rope(title);
CREATE INDEX index_plan_rope_subtitle on plan_rope(subtitle);

