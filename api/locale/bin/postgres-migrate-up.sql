CREATE TABLE locale (
);

CREATE INDEX index_locale_id on locale(id);
CREATE INDEX index_locale_created_at on locale(created_at);
CREATE INDEX index_locale_created_by on locale(created_by);
CREATE INDEX index_locale_updated_at on locale(updated_at);
CREATE INDEX index_locale_updated_by on locale(updated_by);
CREATE INDEX index_locale_retired_at on locale(retired_at);
CREATE INDEX index_locale_retired_by on locale(retired_by);
CREATE INDEX index_locale_locale_code on locale(locale_code);
CREATE INDEX index_locale_tagging on locale(tagging);

