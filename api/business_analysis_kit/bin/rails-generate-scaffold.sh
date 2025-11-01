#!/bin/sh
set -euf

rails generate scaffold \
    business_analysis_kit \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        six_pager_double_sider_as_url:text \
        six_pager_double_sider_as_markdown:markdown \
        swot_as_url:text \
        swot_strengths_as_markdown:markdown \
        swot_weaknesses_as_markdown:markdown \
        swot_opportunities_as_markdown:markdown \
        swot_threats_as_markdown:markdown \
        porters_five_forces_as_url:text \
        porters_five_forces_entrants_as_markdown:markdown \
        porters_five_forces_substitutes_as_markdown:markdown \
        porters_five_forces_customers_as_markdown:markdown \
        porters_five_forces_suppliers_as_markdown:markdown \
        porters_five_forces_competitors_as_markdown:markdown \
        steeple_as_url:text \
        steeple_sociological_as_markdown:markdown \
        steeple_technological_as_markdown:markdown \
        steeple_economic_as_markdown:markdown \
        steeple_environmental_as_markdown:markdown \
        steeple_political_as_markdown:markdown \
        steeple_legal_as_markdown:markdown \
        steeple_ethical_as_markdown:markdown \
        roles_and_responsibilities_as_url:text \
        roles_and_responsibilities_as_markdown:markdown \
        responsibility_assignment_matrix_as_url:text \
        responsibility_assignment_matrix_as_markdown:markdown \
    --force \
    --no-timestamps \

