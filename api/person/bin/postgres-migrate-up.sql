CREATE TABLE person (
);

CREATE INDEX person_id_index on person(id);
CREATE INDEX person_created_at_index on person(created_at);
CREATE INDEX person_created_by_index on person(created_by);
CREATE INDEX person_updated_at_index on person(updated_at);
CREATE INDEX person_updated_by_index on person(updated_by);
CREATE INDEX person_retired_at_index on person(retired_at);
CREATE INDEX person_retired_by_index on person(retired_by);
CREATE INDEX person_locale_code_index on person(locale_code);
CREATE INDEX person_tagging_index on person(tagging);
CREATE INDEX person_name_index on person(name);
CREATE INDEX person_subname_index on person(subname);
CREATE INDEX person_sign_index on person(sign);
CREATE INDEX person_kind_index on person(kind);
CREATE INDEX person_birth_date_index on person(birth_date);
CREATE INDEX person_birth_date_year_index on person(birth_date_year);
CREATE INDEX person_death_date_index on person(death_date);
CREATE INDEX person_death_date_year_index on person(death_date_year);

