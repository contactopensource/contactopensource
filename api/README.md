# API

The API aims to use resources, such as typical REST-like resources, for typical concepts such as:

* person

* place

* thing

Each resource is defined in its own subdirectory such as:

* [person/](person/)

* [place/](place/)

* [thing/](thing/)

Each resource subdirectory contains a file `api.yml` that specifies details such as:

* `summary`: A plain text summary, such as `This is a typical person`.

* `module`: A module name that is singular, word case, and suitable for web frameworks, such as `Account`.

* `model`: A model name that is singular, word case, and suitable for web frameworks, such as `Person`.

* `table`: A table name that is plural, snake case, and suitable for databases, such as `persons`. Note that some table name conventions have special ways to handle some words, such as `persons` vs. `people`, or words that are their own plurals such as `fish` or `sheep`.

* `uml`: Any UML fragment that is PlantUML syntax, such as connecting UML ERD boxs by using `access_agent ||-r-o{ access_agent_locale`.

* `attributes`: A list of attributes, such as for the person's name, birth date, etc.


## Attribute examples

For typical cards:

  * `name`: A required string that is plain text, and is the preferred display name for typical interactions.

  * `summary`: An optional string that is plain text, up to 55 characters, such as typical for an email subject line.

  * `description`: An optional string that is plain text, as long as you wish.

  * `disambiguation`: An optional string that is plain text, that describes how this particular item is different than others.

  * `locale_id`: An international locale identifier, such as the id of locale "English - United States".

For typical images:

  * `image_url`: An image URL that should render for the item, such as a person's photo. Note that the API generally aims for application-specific dynamic scaling of an image, such as for showing a thumbnail.

  * `image_1024x1024_url`: An image URL for the item, 1024x1024 pixels, which is square 1:1 aspect ratio.

  * `image_1024x1024_alt`: An image alternative text description for the item.

  * `image_1920x960_url`: An image URL for the item, 1920x1024 pixels, which is landscape 2:1 aspect ratio.

  * `image_1920x960_alt`: An image alternative text description for the item.

  * `image_960x1920_url`: An image URL for the item, 1024x1024 pixels, which is portrait 1:2 aspect ratio.

  * `image_960x1920_alt`: An image alternative text description for the item.

For typical dates:

* `start_date` and `stop_date`: When the item starts and stops, such as an organization's founding date and dissolution date. Note the API favors the wording `start` and `stop` rather than `begin` and `end`.

* `*_date: If your needs include tracking a date as an ISO year and ISO week, then consider adding a field `*_date_iso_year` and `*_date_iso_week`, or a generated column such as `select extract('isoyear' from my_date) as my_date_iso_year;` and `extract('week' from my_date) as my_date_iso_week;`


## Attribute conventions

The attributes aim to use specific naming conventions:

* To help align with [schema.org](https://schema.org), such as the worldwide convention of `given_name` rather than the United States convention of `first_name`.

* To improve maintainability and clarity, such as using present tense full words like `birth_date` rather than past tense `born_on` or abbreviation `dob`.



