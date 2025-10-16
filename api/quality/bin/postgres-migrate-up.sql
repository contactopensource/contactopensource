CREATE TABLE quality (
);

CREATE INDEX index_quality_id on quality(id);
CREATE INDEX index_quality_created_at on quality(created_at);
CREATE INDEX index_quality_created_by on quality(created_by);
CREATE INDEX index_quality_updated_at on quality(updated_at);
CREATE INDEX index_quality_updated_by on quality(updated_by);
CREATE INDEX index_quality_deleted_at on quality(deleted_at);
CREATE INDEX index_quality_deleted_by on quality(deleted_by);
CREATE INDEX index_quality_locale_code on quality(locale_code);
CREATE INDEX index_quality_tagging on quality(tagging);
CREATE INDEX index_quality_name on quality(name);
CREATE INDEX index_quality_subname on quality(subname);
CREATE INDEX index_quality_sign on quality(sign);
CREATE INDEX index_quality_kind on quality(kind);

