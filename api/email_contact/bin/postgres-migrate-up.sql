CREATE TABLE email_contact (
);

CREATE INDEX index_email_contact_id on email_contact(id);
CREATE INDEX index_email_contact_sign on email_contact(sign);
CREATE INDEX index_email_contact_created_at on email_contact(created_at);
CREATE INDEX index_email_contact_created_by on email_contact(created_by);
CREATE INDEX index_email_contact_updated_at on email_contact(updated_at);
CREATE INDEX index_email_contact_updated_by on email_contact(updated_by);
CREATE INDEX index_email_contact_deleted_at on email_contact(deleted_at);
CREATE INDEX index_email_contact_deleted_by on email_contact(deleted_by);
CREATE INDEX index_email_contact_locale_code on email_contact(locale_code);
CREATE INDEX index_email_contact_sign on email_contact(sign);
CREATE INDEX index_email_contact_kind on email_contact(kind);
CREATE INDEX index_email_contact_title on email_contact(title);
CREATE INDEX index_email_contact_subtitle on email_contact(subtitle);

