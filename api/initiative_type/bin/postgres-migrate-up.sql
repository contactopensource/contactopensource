CREATE TABLE initiative_type (
);

CREATE INDEX index_initiative_type_id on initiative_type(id);
CREATE INDEX index_initiative_type_created_at on initiative_type(created_at);
CREATE INDEX index_initiative_type_created_by on initiative_type(created_by);
CREATE INDEX index_initiative_type_updated_at on initiative_type(updated_at);
CREATE INDEX index_initiative_type_updated_by on initiative_type(updated_by);
CREATE INDEX index_initiative_type_retired_at on initiative_type(retired_at);
CREATE INDEX index_initiative_type_retired_by on initiative_type(retired_by);
CREATE INDEX index_initiative_type_locale_code on initiative_type(locale_code);
CREATE INDEX index_initiative_type_tagging on initiative_type(tagging);
CREATE INDEX index_initiative_type_name on initiative_type(name);
CREATE INDEX index_initiative_type_subname on initiative_type(subname);
CREATE INDEX index_initiative_type_sign on initiative_type(sign);
CREATE INDEX index_initiative_type_kind on initiative_type(kind);

