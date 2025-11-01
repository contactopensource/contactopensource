CREATE TABLE postal_contact (
);

CREATE INDEX index_postal_contact_id on postal_contact(id);
CREATE INDEX index_postal_contact_created_at on postal_contact(created_at);
CREATE INDEX index_postal_contact_created_by on postal_contact(created_by);
CREATE INDEX index_postal_contact_updated_at on postal_contact(updated_at);
CREATE INDEX index_postal_contact_updated_by on postal_contact(updated_by);
CREATE INDEX index_postal_contact_retired_at on postal_contact(retired_at);
CREATE INDEX index_postal_contact_retired_by on postal_contact(retired_by);
CREATE INDEX index_postal_contact_locale_code on postal_contact(locale_code);
CREATE INDEX index_postal_contact_tagging on postal_contact(tagging);
CREATE INDEX index_postal_contact_name on postal_contact(name);
CREATE INDEX index_postal_contact_subname on postal_contact(subname);
CREATE INDEX index_postal_contact_sign on postal_contact(sign);
CREATE INDEX index_postal_contact_kind on postal_contact(kind);

