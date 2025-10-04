CREATE TABLE trait (
);

CREATE INDEX index_trait_id on trait(id);
CREATE INDEX index_trait_created_at on trait(created_at);
CREATE INDEX index_trait_created_by on trait(created_by);
CREATE INDEX index_trait_updated_at on trait(updated_at);
CREATE INDEX index_trait_updated_by on trait(updated_by);
CREATE INDEX index_trait_deleted_at on trait(deleted_at);
CREATE INDEX index_trait_deleted_by on trait(deleted_by);
CREATE INDEX index_trait_locale_code on trait(locale_code);
CREATE INDEX index_trait_sign on trait(sign);
CREATE INDEX index_trait_kind on trait(kind);
CREATE INDEX index_trait_name on trait(name);
CREATE INDEX index_trait_subname on trait(subname);

