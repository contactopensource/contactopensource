CREATE TABLE content_video (
);

CREATE INDEX index_content_video_id on content_video(id);
CREATE INDEX index_content_video_sign on content_video(sign);
CREATE INDEX index_content_video_created_at on content_video(created_at);
CREATE INDEX index_content_video_created_by on content_video(created_by);
CREATE INDEX index_content_video_updated_at on content_video(updated_at);
CREATE INDEX index_content_video_updated_by on content_video(updated_by);
CREATE INDEX index_content_video_deleted_at on content_video(deleted_at);
CREATE INDEX index_content_video_deleted_by on content_video(deleted_by);
CREATE INDEX index_content_video_locale_id on content_video(locale_id);
CREATE INDEX index_content_video_title on content_video(title);
CREATE INDEX index_content_video_subtitle on content_video(subtitle);
CREATE INDEX index_content_video_width_as_pixels on content_video(width_as_pixels);
CREATE INDEX index_content_video_height_as_pixels on content_video(height_as_pixels);
CREATE INDEX index_content_video_duration_as_seconds on content_video(duration_as_seconds);

