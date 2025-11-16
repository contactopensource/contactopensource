CREATE TABLE content_audio (
);

CREATE INDEX content_audio_id_index on content_audio(id);
CREATE INDEX content_audio_created_at_index on content_audio(created_at);
CREATE INDEX content_audio_created_by_index on content_audio(created_by);
CREATE INDEX content_audio_updated_at_index on content_audio(updated_at);
CREATE INDEX content_audio_updated_by_index on content_audio(updated_by);
CREATE INDEX content_audio_retired_at_index on content_audio(retired_at);
CREATE INDEX content_audio_retired_by_index on content_audio(retired_by);
CREATE INDEX content_audio_locale_code_index on content_audio(locale_code);
CREATE INDEX content_audio_tagging_index on content_audio(tagging);
CREATE INDEX content_audio_name_index on content_audio(name);
CREATE INDEX content_audio_subname_index on content_audio(subname);
CREATE INDEX content_audio_slug_index on content_audio(slug);
CREATE INDEX content_audio_sign_index on content_audio(sign);
CREATE INDEX content_audio_kind_index on content_audio(kind);

