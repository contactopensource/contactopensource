# pantone_process_color


Pantone Process Color number, which requires a license to use.


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

Main:

  * key: string (index) - example: "Red 032 C". Always use Pantone format "{name} {code} {stock}".

  * name: string (index) - example: "Red". Always use Pantone case, which is typically title case.

  * code: string(3) (index) - example: "032" means red. Any leading zeros matter.

  * stock: string(1) (index) - example: "C" indicates coated stock; "U" indicates uncoated stock. Uppercase only.

