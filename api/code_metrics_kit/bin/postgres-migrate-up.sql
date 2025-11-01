CREATE TABLE code_metrics_kit (
);

CREATE INDEX index_code_metrics_kit_id on code_metrics_kit(id);
CREATE INDEX index_code_metrics_kit_created_at on code_metrics_kit(created_at);
CREATE INDEX index_code_metrics_kit_created_by on code_metrics_kit(created_by);
CREATE INDEX index_code_metrics_kit_updated_at on code_metrics_kit(updated_at);
CREATE INDEX index_code_metrics_kit_updated_by on code_metrics_kit(updated_by);
CREATE INDEX index_code_metrics_kit_retired_at on code_metrics_kit(retired_at);
CREATE INDEX index_code_metrics_kit_retired_by on code_metrics_kit(retired_by);
CREATE INDEX index_code_metrics_kit_locale_code on code_metrics_kit(locale_code);
CREATE INDEX index_code_metrics_kit_tagging on code_metrics_kit(tagging);

