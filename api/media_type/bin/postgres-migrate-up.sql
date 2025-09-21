CREATE TABLE media_type (
);

CREATE INDEX index_media_type_id on media_type(id);
CREATE INDEX index_media_type_sign on media_type(sign);
CREATE INDEX index_media_type_created_at on media_type(created_at);
CREATE INDEX index_media_type_created_by on media_type(created_by);
CREATE INDEX index_media_type_updated_at on media_type(updated_at);
CREATE INDEX index_media_type_updated_by on media_type(updated_by);
CREATE INDEX index_media_type_deleted_at on media_type(deleted_at);
CREATE INDEX index_media_type_deleted_by on media_type(deleted_by);
CREATE INDEX index_media_type_locale_id on media_type(locale_id);
CREATE INDEX index_media_type_title on media_type(title);
CREATE INDEX index_media_type_subtitle on media_type(subtitle);

