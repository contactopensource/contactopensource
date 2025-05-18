# media_type


A media type is an identifier for file formats and content formats.


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

  * text: string - example: "application/vnd.foo;charset=UTF-8"

  * supertype: string - example: "application" means an application

  * subtype: string - example: "vnd.foo" means vendor then foo namespace

  * tree: string - example: "vnd." means vendor tree

  * suffix: string - example: "+zip" means ZIP compressed file

  * parameters: string[] - example: "charset=UTF-8" means character set is Unicode Transformation Format 8

