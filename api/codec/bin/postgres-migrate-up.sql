CREATE TABLE codec (
);

CREATE INDEX codec_id_index on codec(id);
CREATE INDEX codec_created_at_index on codec(created_at);
CREATE INDEX codec_created_by_index on codec(created_by);
CREATE INDEX codec_updated_at_index on codec(updated_at);
CREATE INDEX codec_updated_by_index on codec(updated_by);
CREATE INDEX codec_retired_at_index on codec(retired_at);
CREATE INDEX codec_retired_by_index on codec(retired_by);
CREATE INDEX codec_locale_code_index on codec(locale_code);
CREATE INDEX codec_tagging_index on codec(tagging);
CREATE INDEX codec_name_index on codec(name);
CREATE INDEX codec_subname_index on codec(subname);
CREATE INDEX codec_sign_index on codec(sign);
CREATE INDEX codec_kind_index on codec(kind);

