# event

An `event` is anything time-based, such as a lunch meeting, or birthday party, or even longer such as a calendar year, or geological era.

Lifetime attributes:

* start_timestamp_utc : timestamp -- example: 2020-01-01T00:00:00±00:00±00:00

* stop_timestamp_utc : timestamp -- example: 2020-01-01T00:00:00±00:00±00:00

* duration_as_seconds : count -- example: 3600 seconds (1 hour)

## event locale

Attributes:

* event_id : event(id)+ -- example: event for Alice's birthday party

* locale_id : locale(id)+ -- example: id of locale "English - United States"

* name : string+ -- example: "Alice's birthday party"

* summary : string -- example: "Alice's birthday party at noon"

* description : text -- example: "Alice's birthday party at noon with cake and ice cream"

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
