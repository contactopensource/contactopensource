#!/bin/sh
set -euf

mix phx.gen.html \
    None BusinessAnalysis None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        six_pager_double_sider_as_url:urlNone \
        six_pager_double_sider_as_markdown:markdownNone \
        swot_as_url:urlNone \
        swot_strengths_as_markdown:markdownNone \
        swot_weaknesses_as_markdown:markdownNone \
        swot_opportunities_as_markdown:markdownNone \
        swot_threats_as_markdown:markdownNone \
        porters_five_forces_as_url:urlNone \
        porters_five_forces_entrants_as_markdown:markdownNone \
        porters_five_forces_substitutes_as_markdown:markdownNone \
        porters_five_forces_customers_as_markdown:markdownNone \
        porters_five_forces_suppliers_as_markdown:markdownNone \
        porters_five_forces_competitors_as_markdown:markdownNone \
        steeple_as_url:urlNone \
        steeple_sociological_as_markdown:markdownNone \
        steeple_technological_as_markdown:markdownNone \
        steeple_economic_as_markdown:markdownNone \
        steeple_environmental_as_markdown:markdownNone \
        steeple_political_as_markdown:markdownNone \
        steeple_legal_as_markdown:markdownNone \
        steeple_ethical_as_markdown:markdownNone \
        roles_and_responsibilities_as_url:urlNone \
        roles_and_responsibilities_as_markdown:markdownNone \
        responsibility_assignment_matrix_as_url:urlNone \
        responsibility_assignment_matrix_as_markdown:markdownNone \
    --force \
    --no-timestamps \

