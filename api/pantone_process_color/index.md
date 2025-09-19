# pantone_process_color


Pantone Process Color number, which requires a license to use.


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * key: string (index) - example: "Red 032 C". Always use Pantone format "{name} {code} {stock}".

  * name: string (index) - example: "Red". Always use Pantone case, which is typically title case.

  * code: string (index) - example: "032" means red. Any leading zeros matter.

  * stock: string (index) - example: "C" indicates coated stock; "U" indicates uncoated stock. Uppercase only.

