CREATE TABLE codec (
);

CREATE INDEX index_codec_id on codec(id);
CREATE INDEX index_codec_sign on codec(sign);
CREATE INDEX index_codec_created_at on codec(created_at);
CREATE INDEX index_codec_created_by on codec(created_by);
CREATE INDEX index_codec_updated_at on codec(updated_at);
CREATE INDEX index_codec_updated_by on codec(updated_by);
CREATE INDEX index_codec_deleted_at on codec(deleted_at);
CREATE INDEX index_codec_deleted_by on codec(deleted_by);
CREATE INDEX index_codec_locale_code on codec(locale_code);
CREATE INDEX index_codec_sign on codec(sign);
CREATE INDEX index_codec_kind on codec(kind);
CREATE INDEX index_codec_title on codec(title);
CREATE INDEX index_codec_subtitle on codec(subtitle);

