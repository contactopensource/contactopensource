CREATE TABLE content_video (
);

CREATE INDEX content_video_id_index on content_video(id);
CREATE INDEX content_video_created_at_index on content_video(created_at);
CREATE INDEX content_video_created_by_index on content_video(created_by);
CREATE INDEX content_video_updated_at_index on content_video(updated_at);
CREATE INDEX content_video_updated_by_index on content_video(updated_by);
CREATE INDEX content_video_retired_at_index on content_video(retired_at);
CREATE INDEX content_video_retired_by_index on content_video(retired_by);
CREATE INDEX content_video_locale_code_index on content_video(locale_code);
CREATE INDEX content_video_tagging_index on content_video(tagging);
CREATE INDEX content_video_name_index on content_video(name);
CREATE INDEX content_video_subname_index on content_video(subname);
CREATE INDEX content_video_sign_index on content_video(sign);
CREATE INDEX content_video_kind_index on content_video(kind);
CREATE INDEX content_video_width_as_pixels_index on content_video(width_as_pixels);
CREATE INDEX content_video_height_as_pixels_index on content_video(height_as_pixels);
CREATE INDEX content_video_duration_as_seconds_index on content_video(duration_as_seconds);

