CREATE TABLE content_image (
);

CREATE INDEX index_content_image_id on content_image(id);
CREATE INDEX index_content_image_sign on content_image(sign);
CREATE INDEX index_content_image_created_at on content_image(created_at);
CREATE INDEX index_content_image_created_by on content_image(created_by);
CREATE INDEX index_content_image_updated_at on content_image(updated_at);
CREATE INDEX index_content_image_updated_by on content_image(updated_by);
CREATE INDEX index_content_image_deleted_at on content_image(deleted_at);
CREATE INDEX index_content_image_deleted_by on content_image(deleted_by);
CREATE INDEX index_content_image_locale_code on content_image(locale_code);
CREATE INDEX index_content_image_sign on content_image(sign);
CREATE INDEX index_content_image_kind on content_image(kind);
CREATE INDEX index_content_image_title on content_image(title);
CREATE INDEX index_content_image_subtitle on content_image(subtitle);

