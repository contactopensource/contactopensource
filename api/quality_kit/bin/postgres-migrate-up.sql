CREATE TABLE quality_kit (
);

CREATE INDEX index_quality_kit_id on quality_kit(id);
CREATE INDEX index_quality_kit_created_at on quality_kit(created_at);
CREATE INDEX index_quality_kit_created_by on quality_kit(created_by);
CREATE INDEX index_quality_kit_updated_at on quality_kit(updated_at);
CREATE INDEX index_quality_kit_updated_by on quality_kit(updated_by);
CREATE INDEX index_quality_kit_deleted_at on quality_kit(deleted_at);
CREATE INDEX index_quality_kit_deleted_by on quality_kit(deleted_by);
CREATE INDEX index_quality_kit_locale_code on quality_kit(locale_code);
CREATE INDEX index_quality_kit_tagging on quality_kit(tagging);

