CREATE TABLE content_audio (
);

CREATE INDEX index_content_audio_id on content_audio(id);
CREATE INDEX index_content_audio_sign on content_audio(sign);
CREATE INDEX index_content_audio_created_at on content_audio(created_at);
CREATE INDEX index_content_audio_created_by on content_audio(created_by);
CREATE INDEX index_content_audio_updated_at on content_audio(updated_at);
CREATE INDEX index_content_audio_updated_by on content_audio(updated_by);
CREATE INDEX index_content_audio_deleted_at on content_audio(deleted_at);
CREATE INDEX index_content_audio_deleted_by on content_audio(deleted_by);
CREATE INDEX index_content_audio_locale_id on content_audio(locale_id);
CREATE INDEX index_content_audio_title on content_audio(title);
CREATE INDEX index_content_audio_subtitle on content_audio(subtitle);

