CREATE TABLE content_font (
);

CREATE INDEX index_content_font_id on content_font(id);
CREATE INDEX index_content_font_created_at on content_font(created_at);
CREATE INDEX index_content_font_created_by on content_font(created_by);
CREATE INDEX index_content_font_updated_at on content_font(updated_at);
CREATE INDEX index_content_font_updated_by on content_font(updated_by);
CREATE INDEX index_content_font_deleted_at on content_font(deleted_at);
CREATE INDEX index_content_font_deleted_by on content_font(deleted_by);
CREATE INDEX index_content_font_locale_code on content_font(locale_code);
CREATE INDEX index_content_font_sign on content_font(sign);
CREATE INDEX index_content_font_kind on content_font(kind);
CREATE INDEX index_content_font_name on content_font(name);
CREATE INDEX index_content_font_subname on content_font(subname);

