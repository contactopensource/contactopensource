CREATE TABLE vital_sign_kit (
);

CREATE INDEX vital_sign_kit_id_index on vital_sign_kit(id);
CREATE INDEX vital_sign_kit_created_at_index on vital_sign_kit(created_at);
CREATE INDEX vital_sign_kit_created_by_index on vital_sign_kit(created_by);
CREATE INDEX vital_sign_kit_updated_at_index on vital_sign_kit(updated_at);
CREATE INDEX vital_sign_kit_updated_by_index on vital_sign_kit(updated_by);
CREATE INDEX vital_sign_kit_retired_at_index on vital_sign_kit(retired_at);
CREATE INDEX vital_sign_kit_retired_by_index on vital_sign_kit(retired_by);
CREATE INDEX vital_sign_kit_locale_code_index on vital_sign_kit(locale_code);
CREATE INDEX vital_sign_kit_tagging_index on vital_sign_kit(tagging);

