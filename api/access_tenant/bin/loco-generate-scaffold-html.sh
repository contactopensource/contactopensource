#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_tenant \

