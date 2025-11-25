CREATE TABLE color_name_kit (
);

CREATE INDEX color_name_kit_id_index on color_name_kit(id);
CREATE INDEX color_name_kit_created_at_index on color_name_kit(created_at);
CREATE INDEX color_name_kit_created_by_index on color_name_kit(created_by);
CREATE INDEX color_name_kit_updated_at_index on color_name_kit(updated_at);
CREATE INDEX color_name_kit_updated_by_index on color_name_kit(updated_by);
CREATE INDEX color_name_kit_retired_at_index on color_name_kit(retired_at);
CREATE INDEX color_name_kit_retired_by_index on color_name_kit(retired_by);
CREATE INDEX color_name_kit_locale_code_index on color_name_kit(locale_code);
CREATE INDEX color_name_kit_tagging_index on color_name_kit(tagging);

