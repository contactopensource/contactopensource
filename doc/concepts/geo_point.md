# geo_point

A geo_point is a geographic point in space, typically with a latitude, longitude, and optionally with an altitude and/or elevation.

Comparison of altitude and elevation:

  * The altitude of an object is the height above the earth's surface, typically compared to mean sea level (MSL) or above ground level (AGL).

  * The elevation of an object is it's height above the earth's surface, typically compared to mean sea level (MSL).

  * Examples: A typical airplane in flight has an altitude, not an elevation. A typical building has an elevation, not an altitude.

Note about mean sea level:

  * Mean sea level changes over time. For this and other reasons, recorded measurements of elevation above sea level might differ from the actual elevation of a given location over sea level at a given moment.

Attributes:

* latitude_as_decimal_degrees ~ number ~ example: 37.8199 is 37.8199° N which is Golden Gate Bridge

* longitude_as_decimal_degrees ~ number ~ example: 122.4783 is 122.4783° W (Golden Gate Bridge)

* altitude_msl_as_meters ~ number ~ example: 67.056 is 67.056 meters to mean sea level (MSL) ~ a.k.a. true altitude

* altitude_agl_as_meters ~ number ~ example: 67.056 is 67.056 meters height above ground level (AGL) ~ a.k.a. absolute altitude

* elevation_msl_as_meters ~ number ~ example: 67.056 is 67.056 meters height above mean sea level.
