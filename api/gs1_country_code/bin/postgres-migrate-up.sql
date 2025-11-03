CREATE TABLE gs1_country_code (
);

CREATE INDEX gs1_country_code_id_index on gs1_country_code(id);
CREATE INDEX gs1_country_code_created_at_index on gs1_country_code(created_at);
CREATE INDEX gs1_country_code_created_by_index on gs1_country_code(created_by);
CREATE INDEX gs1_country_code_updated_at_index on gs1_country_code(updated_at);
CREATE INDEX gs1_country_code_updated_by_index on gs1_country_code(updated_by);
CREATE INDEX gs1_country_code_retired_at_index on gs1_country_code(retired_at);
CREATE INDEX gs1_country_code_retired_by_index on gs1_country_code(retired_by);
CREATE INDEX gs1_country_code_locale_code_index on gs1_country_code(locale_code);
CREATE INDEX gs1_country_code_tagging_index on gs1_country_code(tagging);
CREATE INDEX gs1_country_code_name_index on gs1_country_code(name);
CREATE INDEX gs1_country_code_subname_index on gs1_country_code(subname);
CREATE INDEX gs1_country_code_sign_index on gs1_country_code(sign);
CREATE INDEX gs1_country_code_kind_index on gs1_country_code(kind);
CREATE INDEX gs1_country_code_code_index on gs1_country_code(code);

