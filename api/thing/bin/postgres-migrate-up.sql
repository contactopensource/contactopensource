CREATE TABLE thing (
);

CREATE INDEX index_thing_id on thing(id);
CREATE INDEX index_thing_created_at on thing(created_at);
CREATE INDEX index_thing_created_by on thing(created_by);
CREATE INDEX index_thing_updated_at on thing(updated_at);
CREATE INDEX index_thing_updated_by on thing(updated_by);
CREATE INDEX index_thing_retired_at on thing(retired_at);
CREATE INDEX index_thing_retired_by on thing(retired_by);
CREATE INDEX index_thing_locale_code on thing(locale_code);
CREATE INDEX index_thing_tagging on thing(tagging);
CREATE INDEX index_thing_name on thing(name);
CREATE INDEX index_thing_subname on thing(subname);
CREATE INDEX index_thing_sign on thing(sign);
CREATE INDEX index_thing_kind on thing(kind);

