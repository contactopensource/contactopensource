CREATE TABLE content_video (
);

CREATE INDEX index_content_video_id on content_video(id);
CREATE INDEX index_content_video_created_at on content_video(created_at);
CREATE INDEX index_content_video_created_by on content_video(created_by);
CREATE INDEX index_content_video_updated_at on content_video(updated_at);
CREATE INDEX index_content_video_updated_by on content_video(updated_by);
CREATE INDEX index_content_video_deleted_at on content_video(deleted_at);
CREATE INDEX index_content_video_deleted_by on content_video(deleted_by);
CREATE INDEX index_content_video_locale_code on content_video(locale_code);
CREATE INDEX index_content_video_sign on content_video(sign);
CREATE INDEX index_content_video_kind on content_video(kind);
CREATE INDEX index_content_video_name on content_video(name);
CREATE INDEX index_content_video_subname on content_video(subname);
CREATE INDEX index_content_video_width_as_pixels on content_video(width_as_pixels);
CREATE INDEX index_content_video_height_as_pixels on content_video(height_as_pixels);
CREATE INDEX index_content_video_duration_as_seconds on content_video(duration_as_seconds);

