CREATE TABLE spdx_license (
);

CREATE INDEX index_spdx_license_id on spdx_license(id);
CREATE INDEX index_spdx_license_zid on spdx_license(zid);
CREATE INDEX index_spdx_license_code on spdx_license(code);

