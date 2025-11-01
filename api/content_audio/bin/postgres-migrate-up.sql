CREATE TABLE content_audio (
);

CREATE INDEX index_content_audio_id on content_audio(id);
CREATE INDEX index_content_audio_created_at on content_audio(created_at);
CREATE INDEX index_content_audio_created_by on content_audio(created_by);
CREATE INDEX index_content_audio_updated_at on content_audio(updated_at);
CREATE INDEX index_content_audio_updated_by on content_audio(updated_by);
CREATE INDEX index_content_audio_retired_at on content_audio(retired_at);
CREATE INDEX index_content_audio_retired_by on content_audio(retired_by);
CREATE INDEX index_content_audio_locale_code on content_audio(locale_code);
CREATE INDEX index_content_audio_tagging on content_audio(tagging);
CREATE INDEX index_content_audio_name on content_audio(name);
CREATE INDEX index_content_audio_subname on content_audio(subname);
CREATE INDEX index_content_audio_sign on content_audio(sign);
CREATE INDEX index_content_audio_kind on content_audio(kind);

