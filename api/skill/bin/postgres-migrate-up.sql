CREATE TABLE skill (
);

CREATE INDEX index_skill_id on skill(id);
CREATE INDEX index_skill_created_at on skill(created_at);
CREATE INDEX index_skill_created_by on skill(created_by);
CREATE INDEX index_skill_updated_at on skill(updated_at);
CREATE INDEX index_skill_updated_by on skill(updated_by);
CREATE INDEX index_skill_deleted_at on skill(deleted_at);
CREATE INDEX index_skill_deleted_by on skill(deleted_by);
CREATE INDEX index_skill_locale_code on skill(locale_code);
CREATE INDEX index_skill_sign on skill(sign);
CREATE INDEX index_skill_kind on skill(kind);
CREATE INDEX index_skill_name on skill(name);
CREATE INDEX index_skill_subname on skill(subname);

