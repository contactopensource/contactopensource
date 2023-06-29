# geo_point

A geo_point is a geographic point in space, typically with a latitude, longitude, and optionally with an altitude and/or elevation.

Comparison of altitude and elevation:

  * The altitude of an object is the height above the earth's surface, typically compared to mean sea level (MSL) or above ground level (AGL).

  * The elevation of an object is it's height above the earth's surface, typically compared to mean sea level (MSL).

  * Examples: A typical airplane in flight has an altitude, not an elevation. A typical building has an elevation, not an altitude.

Note about mean sea level:

  * Mean sea level changes over time. For this and other reasons, recorded measurements of elevation above sea level might differ from the actual elevation of a given location over sea level at a given moment.

Attributes:

* latitude : decimal_degrees -- example: 37.8199 is 37.8199° N which is Golden Gate Bridge

* longitude : decimal_degrees -- example: 122.4783 is 122.4783° W (Golden Gate Bridge)

* altitude_msl : meters -- example: 67.056 is 67.056 meters higher than mean sea level (MSL)

* altitude_agl : meters -- example: 67.056 is 67.056 meters above ground level (AGL)

* elevation_msl : meters -- example: 67.056 is 67.056 meters higher than mean sea level (MSL)

* elevation_agl : meters -- example: 67.056 is 67.056 meters above ground level (AGL)

* spread_as_meters : meters -- example: 1000 is 1 kilometer


## geo_point_locale

Attributes:

* geo_point_id : geo_point(id)+ -- example: geo_point for Golden Gate Bridge 

* locale_id : locale(id)+ -- example: locale for "English - United States"

* name : string+ -- example: "Golden Gate Bridge"

* summary : string -- example: "Golden Gate Bridge in San Francisco"

* description : text -- example: "Golden Gate Bridge in San Francisco, CA, US"

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
