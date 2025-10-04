CREATE TABLE content_application (
);

CREATE INDEX index_content_application_id on content_application(id);
CREATE INDEX index_content_application_created_at on content_application(created_at);
CREATE INDEX index_content_application_created_by on content_application(created_by);
CREATE INDEX index_content_application_updated_at on content_application(updated_at);
CREATE INDEX index_content_application_updated_by on content_application(updated_by);
CREATE INDEX index_content_application_deleted_at on content_application(deleted_at);
CREATE INDEX index_content_application_deleted_by on content_application(deleted_by);
CREATE INDEX index_content_application_locale_code on content_application(locale_code);
CREATE INDEX index_content_application_sign on content_application(sign);
CREATE INDEX index_content_application_kind on content_application(kind);
CREATE INDEX index_content_application_name on content_application(name);
CREATE INDEX index_content_application_subname on content_application(subname);

