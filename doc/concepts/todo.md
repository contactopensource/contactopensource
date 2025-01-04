# TODO

## Suffixes

* foo_group: a collection of foos. Example: the entity `user_group` has a list of entities of type `user`.

* foo_range: start, stop. Example: the entity `date_range` has attributes `date.start` and `date.stop`.

## Resources

* place

* job_opening

* sport

* thing

* travel

* offer

* role: A `role` is any kind of role, such as for participation in a group, or a position on a team, or a job in a company, etc.

Creative-related:

* artist

* album: Any kind of art collection, such as a song album, photo album, video album.
    example: "Homecoming" by Beyoncé

* song: A `song` is a typical recording artist song. Example: "Welcome" is a song on the album "Homecoming" by the artist Beyoncé.

Social-related:

* feed

* page

* post

* message

* notification - For a notification, such as a social media notification.

* portal

* room

* topic

Medical-related:

* Diagnostic codes such as ICD-9-CM, ICD-10, ICD-10-CM, ICD-11, ICD-11-CM (?)

* diagnosis-related group (DRG)

* Procedural codes. Examples: CPT, HCPCS, ICPM, ICHI

* Pharmaceutical codes. Examples: ATC, NDC, ICD-11
    
* Topographical codes that indicate a specific location in the body. Examples: ICD-O, SNOMED, ICD-11

* https://en.wikipedia.org/wiki/International_Classification_of_Functioning,_Disability_and_Health
  
* https://en.wikipedia.org/wiki/International_Classification_of_Health_Interventions

* https://en.wikipedia.org/wiki/Anatomical_Therapeutic_Chemical_Classification_System

* https://en.wikipedia.org/wiki/Procedure_code
  
* https://en.wikipedia.org/wiki/ICD-10

* https://en.wikipedia.org/wiki/ICD-10_Procedure_Coding_System

* https://en.wikipedia.org/wiki/Healthcare_Common_Procedure_Coding_System


## Codes

* https://wikipedia.org/wiki/Faceted_Application_of_Subject_Terminology
* https://wikipedia.org/wiki/International_Standard_Name_Identifier
* https://wikipedia.org/wiki/International_Standard_Authority_Data_Number

## Metadata

Attributes:

* set_id : set(id)+ -- example: "8bafabcc469dbae2c04e84a42bbfd19d' is ISO

* parent_id : tag.id -- example: "e0bf207b8e2d38bfc3899417ef819a47' is this row's parent row

* text : text -- example: "Goalie"

* description : text -- example: "Goalie for a sports team"

# geopoint name

    spread_as_meters:
      summary: spread as meters
      type: meters
      example: 1000 means 1 kilometer
geography_point_locale:
  summary: locale
  module: TODO
  attributes:
    geography_point_id:
      type: geography_point.id
      example: id
    locale_id:
      type: locale.id
    name:
      type: string
      index: true
      example: Golden Gate Bridge
    summary:
      type: string
      example: Golden Gate Bridge in San Francisco
    description:
      type: text
      example: Golden Gate Bridge in San Francisco, CA, US

# Fetch

Attributes:

* from : uri -- example: "https://example.com/alice.json"

* to : uri -- example: "file://usr/local/share/alice.json"

* media_type_id : media_type(id) -- example: media type id of "text/json"

* posix_cron_pattern:  text
  
* eta : timestamp -- example: estimated time of arrival

## Standards

* https://wikipedia.org/wiki/ISO_6709: Standard representation of geographic point location by coordinates