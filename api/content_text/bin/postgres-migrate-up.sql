CREATE TABLE content_text (
);

CREATE INDEX index_content_text_id on content_text(id);
CREATE INDEX index_content_text_sign on content_text(sign);
CREATE INDEX index_content_text_created_at on content_text(created_at);
CREATE INDEX index_content_text_created_by on content_text(created_by);
CREATE INDEX index_content_text_updated_at on content_text(updated_at);
CREATE INDEX index_content_text_updated_by on content_text(updated_by);
CREATE INDEX index_content_text_deleted_at on content_text(deleted_at);
CREATE INDEX index_content_text_deleted_by on content_text(deleted_by);
CREATE INDEX index_content_text_locale_id on content_text(locale_id);
CREATE INDEX index_content_text_title on content_text(title);
CREATE INDEX index_content_text_subtitle on content_text(subtitle);

