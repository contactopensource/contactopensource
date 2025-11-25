#!/bin/sh
set -euf

mix phx.gen.html \
    None QualityKit None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        quality_availability_as_url:urlNone \
        quality_availability_as_markdown:markdownNone \
        quality_certifiability_as_url:urlNone \
        quality_certifiability_as_markdown:markdownNone \
        quality_compatibility_as_url:urlNone \
        quality_compatibility_as_markdown:markdownNone \
        quality_efficiency_as_url:urlNone \
        quality_efficiency_as_markdown:markdownNone \
        quality_governability_as_url:urlNone \
        quality_governability_as_markdown:markdownNone \
        quality_maintainability_as_url:urlNone \
        quality_maintainability_as_markdown:markdownNone \
        quality_observability_as_url:markdownNone \
        quality_observability_as_markdown:markdownNone \
        quality_operability_as_markdown:urlNone \
        quality_operability_as_markdown:markdownNone \
        quality_recoverability_as_url:urlNone \
        quality_recoverability_as_markdown:markdownNone \
        quality_scalability_as_url:urlNone \
        quality_scalability_as_markdown:markdownNone \
        quality_security_as_url:urlNone \
        quality_security_as_markdown:markdownNone \
        quality_suitability_as_url:markdownNone \
        quality_suitability_as_markdown:markdownNone \
        quality_testability_as_url:urlNone \
        quality_testability_as_markdown:markdownNone \
        quality_transferability_as_url:urlNone \
        quality_transferability_as_markdown:markdownNone \
        quality_translatability_as_url:urlNone \
        quality_translatability_as_markdown:markdownNone \
        quality_warrantability_as_url:urlNone \
        quality_warrantability_as_markdown:markdownNone \
    --force \
    --no-timestamps \

