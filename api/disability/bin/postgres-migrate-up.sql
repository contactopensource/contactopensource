CREATE TABLE disability (
);

CREATE INDEX index_disability_id on disability(id);
CREATE INDEX index_disability_created_at on disability(created_at);
CREATE INDEX index_disability_created_by on disability(created_by);
CREATE INDEX index_disability_updated_at on disability(updated_at);
CREATE INDEX index_disability_updated_by on disability(updated_by);
CREATE INDEX index_disability_retired_at on disability(retired_at);
CREATE INDEX index_disability_retired_by on disability(retired_by);
CREATE INDEX index_disability_locale_code on disability(locale_code);
CREATE INDEX index_disability_tagging on disability(tagging);
CREATE INDEX index_disability_name on disability(name);
CREATE INDEX index_disability_subname on disability(subname);
CREATE INDEX index_disability_sign on disability(sign);
CREATE INDEX index_disability_kind on disability(kind);

