CREATE TABLE person (
);

CREATE INDEX index_person_id on person(id);
CREATE INDEX index_person_created_at on person(created_at);
CREATE INDEX index_person_created_by on person(created_by);
CREATE INDEX index_person_updated_at on person(updated_at);
CREATE INDEX index_person_updated_by on person(updated_by);
CREATE INDEX index_person_deleted_at on person(deleted_at);
CREATE INDEX index_person_deleted_by on person(deleted_by);
CREATE INDEX index_person_locale_code on person(locale_code);
CREATE INDEX index_person_tagging on person(tagging);
CREATE INDEX index_person_name on person(name);
CREATE INDEX index_person_subname on person(subname);
CREATE INDEX index_person_sign on person(sign);
CREATE INDEX index_person_kind on person(kind);
CREATE INDEX index_person_birth_date on person(birth_date);
CREATE INDEX index_person_birth_date_year on person(birth_date_year);
CREATE INDEX index_person_death_date on person(death_date);
CREATE INDEX index_person_death_date_year on person(death_date_year);

