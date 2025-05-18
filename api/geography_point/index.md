# geography_point


A geography_point is a geographic point in space, typically with a latitude, longitude, and optionally with an altitude and/or elevation.


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

Main:

  * latitude_as_decimal_degrees: decimal_degrees - example: 37.8199° N is Golden Gate Bridge in San Francisco

  * longitude_as_decimal_degrees: decimal_degrees - example: 122.4783° W is Golden Gate Bridge in San Francisco

  * altitude_agl_as_meters: meters - example: 67.056 meters above ground level

  * altitude_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

  * elevation_agl_as_meters: meters - example: 67.056 meters above ground level

  * elevation_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

