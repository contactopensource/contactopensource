CREATE TABLE content_application (
);

CREATE INDEX index_content_application_id on content_application(id);
CREATE INDEX index_content_application_sign on content_application(sign);
CREATE INDEX index_content_application_created_at on content_application(created_at);
CREATE INDEX index_content_application_created_by on content_application(created_by);
CREATE INDEX index_content_application_updated_at on content_application(updated_at);
CREATE INDEX index_content_application_updated_by on content_application(updated_by);
CREATE INDEX index_content_application_deleted_at on content_application(deleted_at);
CREATE INDEX index_content_application_deleted_by on content_application(deleted_by);
CREATE INDEX index_content_application_locale_id on content_application(locale_id);
CREATE INDEX index_content_application_title on content_application(title);
CREATE INDEX index_content_application_subtitle on content_application(subtitle);

