#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_assignment \
        access_agent_id:references NOT NULL \
        access_attribute_id:references NOT NULL \

