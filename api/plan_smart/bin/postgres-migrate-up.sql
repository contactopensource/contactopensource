CREATE TABLE plan_smart (
);

CREATE INDEX index_plan_smart_id on plan_smart(id);
CREATE INDEX index_plan_smart_sign on plan_smart(sign);
CREATE INDEX index_plan_smart_created_at on plan_smart(created_at);
CREATE INDEX index_plan_smart_created_by on plan_smart(created_by);
CREATE INDEX index_plan_smart_updated_at on plan_smart(updated_at);
CREATE INDEX index_plan_smart_updated_by on plan_smart(updated_by);
CREATE INDEX index_plan_smart_deleted_at on plan_smart(deleted_at);
CREATE INDEX index_plan_smart_deleted_by on plan_smart(deleted_by);
CREATE INDEX index_plan_smart_locale_code on plan_smart(locale_code);
CREATE INDEX index_plan_smart_sign on plan_smart(sign);
CREATE INDEX index_plan_smart_kind on plan_smart(kind);
CREATE INDEX index_plan_smart_title on plan_smart(title);
CREATE INDEX index_plan_smart_subtitle on plan_smart(subtitle);

