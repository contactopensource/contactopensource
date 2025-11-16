CREATE TABLE initiative_type (
);

CREATE INDEX initiative_type_id_index on initiative_type(id);
CREATE INDEX initiative_type_created_at_index on initiative_type(created_at);
CREATE INDEX initiative_type_created_by_index on initiative_type(created_by);
CREATE INDEX initiative_type_updated_at_index on initiative_type(updated_at);
CREATE INDEX initiative_type_updated_by_index on initiative_type(updated_by);
CREATE INDEX initiative_type_retired_at_index on initiative_type(retired_at);
CREATE INDEX initiative_type_retired_by_index on initiative_type(retired_by);
CREATE INDEX initiative_type_locale_code_index on initiative_type(locale_code);
CREATE INDEX initiative_type_tagging_index on initiative_type(tagging);
CREATE INDEX initiative_type_name_index on initiative_type(name);
CREATE INDEX initiative_type_subname_index on initiative_type(subname);
CREATE INDEX initiative_type_slug_index on initiative_type(slug);
CREATE INDEX initiative_type_sign_index on initiative_type(sign);
CREATE INDEX initiative_type_kind_index on initiative_type(kind);

