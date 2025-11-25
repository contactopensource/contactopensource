CREATE TABLE media_type (
);

CREATE INDEX media_type_id_index on media_type(id);
CREATE INDEX media_type_created_at_index on media_type(created_at);
CREATE INDEX media_type_created_by_index on media_type(created_by);
CREATE INDEX media_type_updated_at_index on media_type(updated_at);
CREATE INDEX media_type_updated_by_index on media_type(updated_by);
CREATE INDEX media_type_retired_at_index on media_type(retired_at);
CREATE INDEX media_type_retired_by_index on media_type(retired_by);
CREATE INDEX media_type_locale_code_index on media_type(locale_code);
CREATE INDEX media_type_tagging_index on media_type(tagging);
CREATE INDEX media_type_name_index on media_type(name);
CREATE INDEX media_type_subname_index on media_type(subname);
CREATE INDEX media_type_slug_index on media_type(slug);
CREATE INDEX media_type_sign_index on media_type(sign);
CREATE INDEX media_type_kind_index on media_type(kind);

