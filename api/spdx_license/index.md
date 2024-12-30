# spdx_license

SPDX license.

Attribute examples:

* name: "GPL 3.0"

* summary: "GNU Public License version 3.0"

* description: "This is the full text of the license."

https://spdx.dev/


## Attributes

Meta:

  * id: bigint (index)

  * zid: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * code: string (index) - example: "GPL-3.0" means GNU Public License version 3.0

