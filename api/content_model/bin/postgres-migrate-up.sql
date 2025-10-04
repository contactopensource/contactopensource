CREATE TABLE content_model (
);

CREATE INDEX index_content_model_id on content_model(id);
CREATE INDEX index_content_model_created_at on content_model(created_at);
CREATE INDEX index_content_model_created_by on content_model(created_by);
CREATE INDEX index_content_model_updated_at on content_model(updated_at);
CREATE INDEX index_content_model_updated_by on content_model(updated_by);
CREATE INDEX index_content_model_deleted_at on content_model(deleted_at);
CREATE INDEX index_content_model_deleted_by on content_model(deleted_by);
CREATE INDEX index_content_model_locale_code on content_model(locale_code);
CREATE INDEX index_content_model_sign on content_model(sign);
CREATE INDEX index_content_model_kind on content_model(kind);
CREATE INDEX index_content_model_name on content_model(name);
CREATE INDEX index_content_model_subname on content_model(subname);

