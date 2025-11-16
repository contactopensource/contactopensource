CREATE TABLE thing (
);

CREATE INDEX thing_id_index on thing(id);
CREATE INDEX thing_created_at_index on thing(created_at);
CREATE INDEX thing_created_by_index on thing(created_by);
CREATE INDEX thing_updated_at_index on thing(updated_at);
CREATE INDEX thing_updated_by_index on thing(updated_by);
CREATE INDEX thing_retired_at_index on thing(retired_at);
CREATE INDEX thing_retired_by_index on thing(retired_by);
CREATE INDEX thing_locale_code_index on thing(locale_code);
CREATE INDEX thing_tagging_index on thing(tagging);
CREATE INDEX thing_name_index on thing(name);
CREATE INDEX thing_subname_index on thing(subname);
CREATE INDEX thing_slug_index on thing(slug);
CREATE INDEX thing_sign_index on thing(sign);
CREATE INDEX thing_kind_index on thing(kind);

