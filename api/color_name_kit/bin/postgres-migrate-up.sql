CREATE TABLE color_name_kit (
);

CREATE INDEX index_color_name_kit_id on color_name_kit(id);
CREATE INDEX index_color_name_kit_sign on color_name_kit(sign);
CREATE INDEX index_color_name_kit_created_at on color_name_kit(created_at);
CREATE INDEX index_color_name_kit_created_by on color_name_kit(created_by);
CREATE INDEX index_color_name_kit_updated_at on color_name_kit(updated_at);
CREATE INDEX index_color_name_kit_updated_by on color_name_kit(updated_by);
CREATE INDEX index_color_name_kit_deleted_at on color_name_kit(deleted_at);
CREATE INDEX index_color_name_kit_deleted_by on color_name_kit(deleted_by);
CREATE INDEX index_color_name_kit_locale_code on color_name_kit(locale_code);

