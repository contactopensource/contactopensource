# pantone_process_color


Pantone Process Color number, which requires a license to use.


## Attributes

Meta:

  * id: uuid (index)

  * sign: string (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp (index)

  * created_by: url (index)

  * updated_at: timestamp (index)

  * updated_by: url (index)

  * deleted_at: timestamp (index)

  * deleted_by: url (index)

  * locale_id: locale.id (index) - example: the id of locale "English - United States".

Main:

  * key: string (index) - example: "Red 032 C". Always use Pantone format "{name} {code} {stock}".

  * name: string (index) - example: "Red". Always use Pantone case, which is typically title case.

  * code: string (index) - example: "032" means red. Any leading zeros matter.

  * stock: string (index) - example: "C" indicates coated stock; "U" indicates uncoated stock. Uppercase only.

