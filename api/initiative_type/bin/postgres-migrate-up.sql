CREATE TABLE initiative_type (
);

CREATE INDEX index_initiative_type_id on initiative_type(id);
CREATE INDEX index_initiative_type_sign on initiative_type(sign);
CREATE INDEX index_initiative_type_created_at on initiative_type(created_at);
CREATE INDEX index_initiative_type_created_by on initiative_type(created_by);
CREATE INDEX index_initiative_type_updated_at on initiative_type(updated_at);
CREATE INDEX index_initiative_type_updated_by on initiative_type(updated_by);
CREATE INDEX index_initiative_type_deleted_at on initiative_type(deleted_at);
CREATE INDEX index_initiative_type_deleted_by on initiative_type(deleted_by);
CREATE INDEX index_initiative_type_locale_id on initiative_type(locale_id);
CREATE INDEX index_initiative_type_title on initiative_type(title);
CREATE INDEX index_initiative_type_subtitle on initiative_type(subtitle);

