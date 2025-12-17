#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    business_analysis_kit \
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
        six_pager_double_sider_as_url:url \
        six_pager_double_sider_as_markdown:markdown \
        swot_as_url:url \
        swot_strengths_as_markdown:markdown \
        swot_weaknesses_as_markdown:markdown \
        swot_opportunities_as_markdown:markdown \
        swot_threats_as_markdown:markdown \
        porters_five_forces_as_url:url \
        porters_five_forces_entrants_as_markdown:markdown \
        porters_five_forces_substitutes_as_markdown:markdown \
        porters_five_forces_customers_as_markdown:markdown \
        porters_five_forces_suppliers_as_markdown:markdown \
        porters_five_forces_competitors_as_markdown:markdown \
        steeple_as_url:url \
        steeple_sociological_as_markdown:markdown \
        steeple_technological_as_markdown:markdown \
        steeple_economic_as_markdown:markdown \
        steeple_environmental_as_markdown:markdown \
        steeple_political_as_markdown:markdown \
        steeple_legal_as_markdown:markdown \
        steeple_ethical_as_markdown:markdown \
        roles_and_responsibilities_as_url:url \
        roles_and_responsibilities_as_markdown:markdown \
        responsibility_assignment_matrix_as_url:url \
        responsibility_assignment_matrix_as_markdown:markdown \

