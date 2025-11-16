CREATE TABLE email_contact (
);

CREATE INDEX email_contact_id_index on email_contact(id);
CREATE INDEX email_contact_created_at_index on email_contact(created_at);
CREATE INDEX email_contact_created_by_index on email_contact(created_by);
CREATE INDEX email_contact_updated_at_index on email_contact(updated_at);
CREATE INDEX email_contact_updated_by_index on email_contact(updated_by);
CREATE INDEX email_contact_retired_at_index on email_contact(retired_at);
CREATE INDEX email_contact_retired_by_index on email_contact(retired_by);
CREATE INDEX email_contact_locale_code_index on email_contact(locale_code);
CREATE INDEX email_contact_tagging_index on email_contact(tagging);
CREATE INDEX email_contact_name_index on email_contact(name);
CREATE INDEX email_contact_subname_index on email_contact(subname);
CREATE INDEX email_contact_slug_index on email_contact(slug);
CREATE INDEX email_contact_sign_index on email_contact(sign);
CREATE INDEX email_contact_kind_index on email_contact(kind);

