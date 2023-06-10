#!/bin/sh
set -euf

rails generate scaffold \
microdata_item \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    itemtype:string:index \
    itemprop:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
