CREATE TABLE content_multipart (
);

CREATE INDEX content_multipart_id_index on content_multipart(id);
CREATE INDEX content_multipart_created_at_index on content_multipart(created_at);
CREATE INDEX content_multipart_created_by_index on content_multipart(created_by);
CREATE INDEX content_multipart_updated_at_index on content_multipart(updated_at);
CREATE INDEX content_multipart_updated_by_index on content_multipart(updated_by);
CREATE INDEX content_multipart_retired_at_index on content_multipart(retired_at);
CREATE INDEX content_multipart_retired_by_index on content_multipart(retired_by);
CREATE INDEX content_multipart_locale_code_index on content_multipart(locale_code);
CREATE INDEX content_multipart_tagging_index on content_multipart(tagging);
CREATE INDEX content_multipart_name_index on content_multipart(name);
CREATE INDEX content_multipart_subname_index on content_multipart(subname);
CREATE INDEX content_multipart_sign_index on content_multipart(sign);
CREATE INDEX content_multipart_kind_index on content_multipart(kind);

