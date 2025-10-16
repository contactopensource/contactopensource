CREATE TABLE media_type (
);

CREATE INDEX index_media_type_id on media_type(id);
CREATE INDEX index_media_type_created_at on media_type(created_at);
CREATE INDEX index_media_type_created_by on media_type(created_by);
CREATE INDEX index_media_type_updated_at on media_type(updated_at);
CREATE INDEX index_media_type_updated_by on media_type(updated_by);
CREATE INDEX index_media_type_deleted_at on media_type(deleted_at);
CREATE INDEX index_media_type_deleted_by on media_type(deleted_by);
CREATE INDEX index_media_type_locale_code on media_type(locale_code);
CREATE INDEX index_media_type_tagging on media_type(tagging);
CREATE INDEX index_media_type_name on media_type(name);
CREATE INDEX index_media_type_subname on media_type(subname);
CREATE INDEX index_media_type_sign on media_type(sign);
CREATE INDEX index_media_type_kind on media_type(kind);

