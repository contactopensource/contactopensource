CREATE TABLE content_multipart (
);

CREATE INDEX index_content_multipart_id on content_multipart(id);
CREATE INDEX index_content_multipart_created_at on content_multipart(created_at);
CREATE INDEX index_content_multipart_created_by on content_multipart(created_by);
CREATE INDEX index_content_multipart_updated_at on content_multipart(updated_at);
CREATE INDEX index_content_multipart_updated_by on content_multipart(updated_by);
CREATE INDEX index_content_multipart_deleted_at on content_multipart(deleted_at);
CREATE INDEX index_content_multipart_deleted_by on content_multipart(deleted_by);
CREATE INDEX index_content_multipart_locale_code on content_multipart(locale_code);
CREATE INDEX index_content_multipart_sign on content_multipart(sign);
CREATE INDEX index_content_multipart_kind on content_multipart(kind);
CREATE INDEX index_content_multipart_name on content_multipart(name);
CREATE INDEX index_content_multipart_subname on content_multipart(subname);

