# ability

Abilities are powers an agent has to perform various actions. They include common abilities, like walking, and rare abilities, like performing a double backflip.
Abilities are intelligent powers: they are guided by the person's intention and executing them successfully results in an action, which is not true for all types of powers. 
Abilities are closely related to but not identical with various other concepts, such as disposition, know-how, aptitude, talent, potential, and skill. 



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


