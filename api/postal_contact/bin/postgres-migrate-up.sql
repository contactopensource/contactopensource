CREATE TABLE postal_contact (
);

CREATE INDEX index_postal_contact_id on postal_contact(id);
CREATE INDEX index_postal_contact_sign on postal_contact(sign);
CREATE INDEX index_postal_contact_created_at on postal_contact(created_at);
CREATE INDEX index_postal_contact_created_by on postal_contact(created_by);
CREATE INDEX index_postal_contact_updated_at on postal_contact(updated_at);
CREATE INDEX index_postal_contact_updated_by on postal_contact(updated_by);
CREATE INDEX index_postal_contact_deleted_at on postal_contact(deleted_at);
CREATE INDEX index_postal_contact_deleted_by on postal_contact(deleted_by);
CREATE INDEX index_postal_contact_locale_code on postal_contact(locale_code);
CREATE INDEX index_postal_contact_sign on postal_contact(sign);
CREATE INDEX index_postal_contact_kind on postal_contact(kind);
CREATE INDEX index_postal_contact_title on postal_contact(title);
CREATE INDEX index_postal_contact_subtitle on postal_contact(subtitle);

