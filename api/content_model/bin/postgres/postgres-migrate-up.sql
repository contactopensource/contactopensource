CREATE TABLE content_model (
);

CREATE INDEX content_model_id_index on content_model(id);
CREATE INDEX content_model_created_at_index on content_model(created_at);
CREATE INDEX content_model_created_by_index on content_model(created_by);
CREATE INDEX content_model_updated_at_index on content_model(updated_at);
CREATE INDEX content_model_updated_by_index on content_model(updated_by);
CREATE INDEX content_model_retired_at_index on content_model(retired_at);
CREATE INDEX content_model_retired_by_index on content_model(retired_by);
CREATE INDEX content_model_locale_code_index on content_model(locale_code);
CREATE INDEX content_model_tagging_index on content_model(tagging);
CREATE INDEX content_model_name_index on content_model(name);
CREATE INDEX content_model_subname_index on content_model(subname);
CREATE INDEX content_model_slug_index on content_model(slug);
CREATE INDEX content_model_sign_index on content_model(sign);
CREATE INDEX content_model_kind_index on content_model(kind);

