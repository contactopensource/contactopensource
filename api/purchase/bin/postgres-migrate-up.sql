CREATE TABLE purchase (
);

CREATE INDEX purchase_id_index on purchase(id);
CREATE INDEX purchase_created_at_index on purchase(created_at);
CREATE INDEX purchase_created_by_index on purchase(created_by);
CREATE INDEX purchase_updated_at_index on purchase(updated_at);
CREATE INDEX purchase_updated_by_index on purchase(updated_by);
CREATE INDEX purchase_retired_at_index on purchase(retired_at);
CREATE INDEX purchase_retired_by_index on purchase(retired_by);
CREATE INDEX purchase_locale_code_index on purchase(locale_code);
CREATE INDEX purchase_tagging_index on purchase(tagging);
CREATE INDEX purchase_name_index on purchase(name);
CREATE INDEX purchase_subname_index on purchase(subname);
CREATE INDEX purchase_sign_index on purchase(sign);
CREATE INDEX purchase_kind_index on purchase(kind);

