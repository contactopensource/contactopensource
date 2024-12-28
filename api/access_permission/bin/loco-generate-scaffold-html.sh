#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_permission \
        access_attribute_it:access_attribute(id) NOT NULL \
        access_operation_id:references NOT NULL \

