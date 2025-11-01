CREATE TABLE purchase (
);

CREATE INDEX index_purchase_id on purchase(id);
CREATE INDEX index_purchase_created_at on purchase(created_at);
CREATE INDEX index_purchase_created_by on purchase(created_by);
CREATE INDEX index_purchase_updated_at on purchase(updated_at);
CREATE INDEX index_purchase_updated_by on purchase(updated_by);
CREATE INDEX index_purchase_retired_at on purchase(retired_at);
CREATE INDEX index_purchase_retired_by on purchase(retired_by);
CREATE INDEX index_purchase_locale_code on purchase(locale_code);
CREATE INDEX index_purchase_tagging on purchase(tagging);
CREATE INDEX index_purchase_name on purchase(name);
CREATE INDEX index_purchase_subname on purchase(subname);
CREATE INDEX index_purchase_sign on purchase(sign);
CREATE INDEX index_purchase_kind on purchase(kind);

