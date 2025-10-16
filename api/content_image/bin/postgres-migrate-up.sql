CREATE TABLE content_image (
);

CREATE INDEX index_content_image_id on content_image(id);
CREATE INDEX index_content_image_created_at on content_image(created_at);
CREATE INDEX index_content_image_created_by on content_image(created_by);
CREATE INDEX index_content_image_updated_at on content_image(updated_at);
CREATE INDEX index_content_image_updated_by on content_image(updated_by);
CREATE INDEX index_content_image_deleted_at on content_image(deleted_at);
CREATE INDEX index_content_image_deleted_by on content_image(deleted_by);
CREATE INDEX index_content_image_locale_code on content_image(locale_code);
CREATE INDEX index_content_image_tagging on content_image(tagging);
CREATE INDEX index_content_image_name on content_image(name);
CREATE INDEX index_content_image_subname on content_image(subname);
CREATE INDEX index_content_image_sign on content_image(sign);
CREATE INDEX index_content_image_kind on content_image(kind);

