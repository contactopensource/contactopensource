CREATE TABLE postal_contact (
);

CREATE INDEX postal_contact_id_index on postal_contact(id);
CREATE INDEX postal_contact_created_at_index on postal_contact(created_at);
CREATE INDEX postal_contact_created_by_index on postal_contact(created_by);
CREATE INDEX postal_contact_updated_at_index on postal_contact(updated_at);
CREATE INDEX postal_contact_updated_by_index on postal_contact(updated_by);
CREATE INDEX postal_contact_retired_at_index on postal_contact(retired_at);
CREATE INDEX postal_contact_retired_by_index on postal_contact(retired_by);
CREATE INDEX postal_contact_locale_code_index on postal_contact(locale_code);
CREATE INDEX postal_contact_tagging_index on postal_contact(tagging);
CREATE INDEX postal_contact_name_index on postal_contact(name);
CREATE INDEX postal_contact_subname_index on postal_contact(subname);
CREATE INDEX postal_contact_slug_index on postal_contact(slug);
CREATE INDEX postal_contact_sign_index on postal_contact(sign);
CREATE INDEX postal_contact_kind_index on postal_contact(kind);

