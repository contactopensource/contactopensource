CREATE TABLE curriculum (
);

CREATE INDEX curriculum_id_index on curriculum(id);
CREATE INDEX curriculum_created_at_index on curriculum(created_at);
CREATE INDEX curriculum_created_by_index on curriculum(created_by);
CREATE INDEX curriculum_updated_at_index on curriculum(updated_at);
CREATE INDEX curriculum_updated_by_index on curriculum(updated_by);
CREATE INDEX curriculum_retired_at_index on curriculum(retired_at);
CREATE INDEX curriculum_retired_by_index on curriculum(retired_by);
CREATE INDEX curriculum_locale_code_index on curriculum(locale_code);
CREATE INDEX curriculum_tagging_index on curriculum(tagging);
CREATE INDEX curriculum_name_index on curriculum(name);
CREATE INDEX curriculum_subname_index on curriculum(subname);
CREATE INDEX curriculum_slug_index on curriculum(slug);
CREATE INDEX curriculum_sign_index on curriculum(sign);
CREATE INDEX curriculum_kind_index on curriculum(kind);

