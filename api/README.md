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

## Attributes conventions

The attributes aim to use specific naming conventions:

* To help align with [schema.org](https://schema.org), such as the worldwide convention of `given_name` rather than the United States convention of `first_name`.
  
* To improve maintainability and clarity, such as using present tense full words like `birth_date` rather than past tense `born_on` or abbreviation `dob`.
