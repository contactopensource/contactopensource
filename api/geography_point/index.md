# geography_point


A geography_point is a geographic point in space, typically with a latitude, longitude, and optionally with an altitude and/or elevation.


## Attributes

Meta:

  * id: uuid (index)

  * sign: char (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp (index)

  * created_by: url (index)

  * updated_at: timestamp (index)

  * updated_by: url (index)

  * deleted_at: timestamp (index)

  * deleted_by: url (index)

  * locale_id: locale.id (index) - example: the id of locale "English - United States".

Main:

  * latitude_as_decimal_degrees: decimal_degrees - example: 37.8199° N is Golden Gate Bridge in San Francisco

  * longitude_as_decimal_degrees: decimal_degrees - example: 122.4783° W is Golden Gate Bridge in San Francisco

  * altitude_agl_as_meters: meters - example: 67.056 meters above ground level

  * altitude_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

  * elevation_agl_as_meters: meters - example: 67.056 meters above ground level

  * elevation_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

## Precision

latitude(9, 7) means 9 total digits with 7 behind the comma e.g. 12.1234567.

longitude(10, 7) means 10 total digits with 7 behind the comma e.g. 123.1234567.

This gives centimeter precision.
