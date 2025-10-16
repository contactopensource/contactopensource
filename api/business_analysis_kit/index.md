# business_analysis_kit

Business analysis kit


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

Main:

  * six_pager_double_sider_as_url: url

  * six_pager_double_sider_as_markdown: markdown

  * swot_as_url: url

  * swot_strengths_as_markdown: markdown

  * swot_weaknesses_as_markdown: markdown

  * swot_opportunities_as_markdown: markdown

  * swot_threats_as_markdown: markdown

  * porters_five_forces_as_url: url

  * porters_five_forces_entrants_as_markdown: markdown

  * porters_five_forces_substitutes_as_markdown: markdown

  * porters_five_forces_customers_as_markdown: markdown

  * porters_five_forces_suppliers_as_markdown: markdown

  * porters_five_forces_competitors_as_markdown: markdown

  * steeple_as_url: url

  * steeple_sociological_as_markdown: markdown

  * steeple_technological_as_markdown: markdown

  * steeple_economic_as_markdown: markdown

  * steeple_environmental_as_markdown: markdown

  * steeple_political_as_markdown: markdown

  * steeple_legal_as_markdown: markdown

  * steeple_ethical_as_markdown: markdown

  * roles_and_responsibilities_as_url: url

  * roles_and_responsibilities_as_markdown: markdown

  * responsibility_assignment_matrix_as_url: url

  * responsibility_assignment_matrix_as_markdown: markdown

