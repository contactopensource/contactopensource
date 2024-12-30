# geo_point


A geo_point is a geographic point in space, typically with a latitude, longitude, and optionally with an altitude and/or elevation.

Comparison of altitude and elevation:

  * The altitude of an object is its height above the earth's surface, typically compared to mean sea level (MSL) or above ground level (AGL).

  * The elevation of an object is its height on the earth's surface, typically compared to mean sea level (MSL) or above ground level (AGL).

Examples: 

  * An airplane in flight has an altitude, not an elevation. 
  
  * A mountain has an elevation, not an altitude.

Calculations:

  * altitude AGL + elevation MSL = altitude MSL

Note about mean sea level:

  * Mean sea level changes over time. For this and other reasons, recorded measurements of elevation above sea level might differ from the actual elevation of a given location over sea level at a given moment.


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

Main:

  * latitude_as_decimal_degrees: decimal_degrees - example: 37.8199° N is Golden Gate Bridge in San Francisco

  * longitude_as_decimal_degrees: decimal_degrees - example: 122.4783° W is Golden Gate Bridge in San Francisco

  * altitude_agl_as_meters: meters - example: 67.056 meters above ground level

  * altitude_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

  * elevation_agl_as_meters: meters - example: 67.056 meters above ground level

  * elevation_msl_as_meters: meters - example: 67.056 meters relative to mean sea level

