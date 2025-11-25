CREATE TABLE quality_kit (
);

CREATE INDEX quality_kit_id_index on quality_kit(id);
CREATE INDEX quality_kit_created_at_index on quality_kit(created_at);
CREATE INDEX quality_kit_created_by_index on quality_kit(created_by);
CREATE INDEX quality_kit_updated_at_index on quality_kit(updated_at);
CREATE INDEX quality_kit_updated_by_index on quality_kit(updated_by);
CREATE INDEX quality_kit_retired_at_index on quality_kit(retired_at);
CREATE INDEX quality_kit_retired_by_index on quality_kit(retired_by);
CREATE INDEX quality_kit_locale_code_index on quality_kit(locale_code);
CREATE INDEX quality_kit_tagging_index on quality_kit(tagging);

