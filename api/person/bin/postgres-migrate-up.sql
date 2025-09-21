CREATE TABLE person (
);

CREATE INDEX index_person_id on person(id);
CREATE INDEX index_person_sign on person(sign);
CREATE INDEX index_person_created_at on person(created_at);
CREATE INDEX index_person_created_by on person(created_by);
CREATE INDEX index_person_updated_at on person(updated_at);
CREATE INDEX index_person_updated_by on person(updated_by);
CREATE INDEX index_person_deleted_at on person(deleted_at);
CREATE INDEX index_person_deleted_by on person(deleted_by);
CREATE INDEX index_person_locale_id on person(locale_id);
CREATE INDEX index_person_title on person(title);
CREATE INDEX index_person_subtitle on person(subtitle);
CREATE INDEX index_person_birth_date on person(birth_date);
CREATE INDEX index_person_birth_date_year on person(birth_date_year);
CREATE INDEX index_person_death_date on person(death_date);
CREATE INDEX index_person_death_date_year on person(death_date_year);

