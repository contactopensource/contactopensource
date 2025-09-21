CREATE TABLE ability (
);

CREATE INDEX index_ability_id on ability(id);
CREATE INDEX index_ability_sign on ability(sign);
CREATE INDEX index_ability_created_at on ability(created_at);
CREATE INDEX index_ability_created_by on ability(created_by);
CREATE INDEX index_ability_updated_at on ability(updated_at);
CREATE INDEX index_ability_updated_by on ability(updated_by);
CREATE INDEX index_ability_deleted_at on ability(deleted_at);
CREATE INDEX index_ability_deleted_by on ability(deleted_by);
CREATE INDEX index_ability_locale_id on ability(locale_id);
CREATE INDEX index_ability_title on ability(title);
CREATE INDEX index_ability_subtitle on ability(subtitle);

