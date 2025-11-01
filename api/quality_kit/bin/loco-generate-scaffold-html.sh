#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    quality_kit \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        quality_availability_as_url:url \
        quality_availability_as_markdown:markdown \
        quality_certifiability_as_url:url \
        quality_certifiability_as_markdown:markdown \
        quality_compatibility_as_url:url \
        quality_compatibility_as_markdown:markdown \
        quality_efficiency_as_url:url \
        quality_efficiency_as_markdown:markdown \
        quality_governability_as_url:url \
        quality_governability_as_markdown:markdown \
        quality_maintainability_as_url:url \
        quality_maintainability_as_markdown:markdown \
        quality_observability_as_url:markdown \
        quality_observability_as_markdown:markdown \
        quality_operability_as_markdown:url \
        quality_operability_as_markdown:markdown \
        quality_recoverability_as_url:url \
        quality_recoverability_as_markdown:markdown \
        quality_scalability_as_url:url \
        quality_scalability_as_markdown:markdown \
        quality_security_as_url:url \
        quality_security_as_markdown:markdown \
        quality_suitability_as_url:markdown \
        quality_suitability_as_markdown:markdown \
        quality_testability_as_url:url \
        quality_testability_as_markdown:markdown \
        quality_transferability_as_url:url \
        quality_transferability_as_markdown:markdown \
        quality_translatability_as_url:url \
        quality_translatability_as_markdown:markdown \
        quality_warrantability_as_url:url \
        quality_warrantability_as_markdown:markdown \

