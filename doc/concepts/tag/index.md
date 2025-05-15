# tag

A `tag` is a typical internet annotation, with the same kind of meaning as a tag on Twitter, Facebook, etc.

Attributes:

* set_id : set(id)+ -- example: "8bafabcc469dbae2c04e84a42bbfd19d' is ISO

* parent_id : tag.id -- example: "e0bf207b8e2d38bfc3899417ef819a47' is this row's parent row

* key : string+

## tag_locale

* tag_id : tag(id)+

* locale_id : locale(id)+

* name : string+ -- example: "trending"

* summary : string -- example: "trending"

* description : text -- example: "Trending in popularity"

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
