# currency_type

Currency is a standardization of money in any form, in use or circulation as a medium of exchange, for example banknotes and coins.
A more general definition is that a currency is a system of money in common use within a specific environment over time, especially for people in a nation state.
Under this definition, the British Pound sterling (£), euros (€), Japanese yen (¥), and U.S. dollars (US$) are examples of (government-issued) fiat currencies. 
https://wikipedia.org/wiki/Currency



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


Card:

  * title: string(50) (index) - example: Alice Anderson


  * subtitle: string(50) (index) - example: @alice


  * summary: string - example: I am a doctor who helps treat children.


  * description: text - example: This text is a description and can be as long as you wish.


  * disambiguation: text - example: This text explains the difference between this item and others.


  * image_1024x1024_url: url

  * image_1024x1024_alt: text

  * emoji: text - example: 🚀


  * star_count: integer - example: 5 for the best rating


Main:

  * name: text (index) - example: United States Dollar


  * code: text (index) - example: USD


  * symbol: text (index) - example: $


