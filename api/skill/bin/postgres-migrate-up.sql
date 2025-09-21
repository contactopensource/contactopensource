CREATE TABLE skill (
);

CREATE INDEX index_skill_id on skill(id);
CREATE INDEX index_skill_sign on skill(sign);
CREATE INDEX index_skill_created_at on skill(created_at);
CREATE INDEX index_skill_created_by on skill(created_by);
CREATE INDEX index_skill_updated_at on skill(updated_at);
CREATE INDEX index_skill_updated_by on skill(updated_by);
CREATE INDEX index_skill_deleted_at on skill(deleted_at);
CREATE INDEX index_skill_deleted_by on skill(deleted_by);
CREATE INDEX index_skill_locale_id on skill(locale_id);
CREATE INDEX index_skill_title on skill(title);
CREATE INDEX index_skill_subtitle on skill(subtitle);

