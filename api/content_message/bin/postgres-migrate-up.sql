CREATE TABLE content_message (
);

CREATE INDEX index_content_message_id on content_message(id);
CREATE INDEX index_content_message_created_at on content_message(created_at);
CREATE INDEX index_content_message_created_by on content_message(created_by);
CREATE INDEX index_content_message_updated_at on content_message(updated_at);
CREATE INDEX index_content_message_updated_by on content_message(updated_by);
CREATE INDEX index_content_message_deleted_at on content_message(deleted_at);
CREATE INDEX index_content_message_deleted_by on content_message(deleted_by);
CREATE INDEX index_content_message_locale_code on content_message(locale_code);
CREATE INDEX index_content_message_sign on content_message(sign);
CREATE INDEX index_content_message_kind on content_message(kind);
CREATE INDEX index_content_message_name on content_message(name);
CREATE INDEX index_content_message_subname on content_message(subname);

