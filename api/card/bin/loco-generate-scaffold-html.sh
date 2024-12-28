#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    card \
        title:"string{50}" NOT NULL \
        subtitle:"string{50}" NOT NULL \
        summary:string NOT NULL \
        description:text NOT NULL \
        disambiguation:text NOT NULL \
        image_1024x1024_url:url NOT NULL \
        image_1024x1024_alt:text NOT NULL \
        emoji:text NOT NULL \
        star_count:integer NOT NULL \

