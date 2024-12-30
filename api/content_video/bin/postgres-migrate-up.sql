CREATE TABLE content_video (
);

CREATE INDEX index_content_video_id on content_video(id);
CREATE INDEX index_content_video_zid on content_video(zid);
CREATE INDEX index_content_video_title on content_video(title);
CREATE INDEX index_content_video_subtitle on content_video(subtitle);
CREATE INDEX index_content_video_width_as_pixels on content_video(width_as_pixels);
CREATE INDEX index_content_video_height_as_pixels on content_video(height_as_pixels);
CREATE INDEX index_content_video_duration_as_seconds on content_video(duration_as_seconds);

