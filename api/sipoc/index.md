# sipoc

Suppliers, Inputs, Processes, Output, Customers (SIPOC).


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

  * suppliers_as_url: url

  * suppliers_as_markdown: markdown

  * inputs_as_url: url

  * inputs_as_markdown: markdown

  * processes_as_url: url

  * processes_as_markdown: markdown

  * outputs_as_url: url

  * outputs_as_markdown: markdown

  * customers_as_url: url

  * customers_as_markdown: markdown

