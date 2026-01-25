CREATE TABLE curriculum_model (
);

CREATE INDEX curriculum_model_id_index on curriculum_model(id);
CREATE INDEX curriculum_model_created_at_index on curriculum_model(created_at);
CREATE INDEX curriculum_model_created_by_index on curriculum_model(created_by);
CREATE INDEX curriculum_model_updated_at_index on curriculum_model(updated_at);
CREATE INDEX curriculum_model_updated_by_index on curriculum_model(updated_by);
CREATE INDEX curriculum_model_retired_at_index on curriculum_model(retired_at);
CREATE INDEX curriculum_model_retired_by_index on curriculum_model(retired_by);
CREATE INDEX curriculum_model_locale_code_index on curriculum_model(locale_code);
CREATE INDEX curriculum_model_tagging_index on curriculum_model(tagging);
CREATE INDEX curriculum_model_name_index on curriculum_model(name);
CREATE INDEX curriculum_model_subname_index on curriculum_model(subname);
CREATE INDEX curriculum_model_slug_index on curriculum_model(slug);
CREATE INDEX curriculum_model_sign_index on curriculum_model(sign);
CREATE INDEX curriculum_model_kind_index on curriculum_model(kind);

