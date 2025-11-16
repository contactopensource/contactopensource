CREATE TABLE purchase_payment (
);

CREATE INDEX purchase_payment_id_index on purchase_payment(id);
CREATE INDEX purchase_payment_created_at_index on purchase_payment(created_at);
CREATE INDEX purchase_payment_created_by_index on purchase_payment(created_by);
CREATE INDEX purchase_payment_updated_at_index on purchase_payment(updated_at);
CREATE INDEX purchase_payment_updated_by_index on purchase_payment(updated_by);
CREATE INDEX purchase_payment_retired_at_index on purchase_payment(retired_at);
CREATE INDEX purchase_payment_retired_by_index on purchase_payment(retired_by);
CREATE INDEX purchase_payment_locale_code_index on purchase_payment(locale_code);
CREATE INDEX purchase_payment_tagging_index on purchase_payment(tagging);
CREATE INDEX purchase_payment_name_index on purchase_payment(name);
CREATE INDEX purchase_payment_subname_index on purchase_payment(subname);
CREATE INDEX purchase_payment_slug_index on purchase_payment(slug);
CREATE INDEX purchase_payment_sign_index on purchase_payment(sign);
CREATE INDEX purchase_payment_kind_index on purchase_payment(kind);
CREATE INDEX purchase_payment_key_index on purchase_payment(key);

