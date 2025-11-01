#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Works.Initiative \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute name:string \
    --attribute subname:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute status:string \
    --attribute tagging:string \
    --attribute url:text \
    --attribute email:string \
    --attribute phone:string \
    --attribute messaging:string \
    --attribute postal:string \
    --attribute orcid_pid:string \
    --attribute rdf_type:string \
    --attribute linkedin_url:text \
    --attribute github_url:text \
    --attribute codeberg_url:text \
    --attribute agents_as_url:text \
    --attribute agents_as_markdown:markdown \
    --attribute home_emoji_url:text \
    --attribute bellhop_bell_emoji_url:text \
    --attribute target_emoji_url:text \
    --attribute gear_emoji_url:text \
    --attribute spiral_calendar_emoji_url:text \
    --attribute sparkles_emoji_url:text \
    --attribute speech_bubble_emoji_url:text \
    --attribute newspaper_emoji_url:text \
    --attribute bar_chart_emoji_url:text \
    --attribute movie_camera_emoji_url:text \
    --attribute construction_worker_emoji_url:text \
    --attribute crystal_ball_emoji_url:text \
    --attribute butterfly_emoji_url:text \
    --attribute lady_beetle_emoji_url:text \
    --attribute note:string \
    --attribute email_distribution_list:string \
    --attribute daisyui_timeline_html:string \
    --attribute org_mode:string \
    --attribute task_list_as_markdown:markdown \
    --attribute ways_of_working_as_markdown:markdown \
    --attribute objectives_and_key_results_as_url:text \
    --attribute objectives_and_key_results_as_markdown:markdown \
    --attribute key_performance_indicators_as_url:markdown \
    --attribute key_performance_indicators_as_markdown:markdown \
    --attribute glossary_as_url:text \
    --attribute glossary_as_markdown:markdown \
    --attribute code_of_conduct_url:text \
    --attribute code_of_conduct_as_markdown:markdown \
    --attribute license_url:text \
    --attribute license_as_markdown:markdown \
    --attribute arc42_as_url:text \
    --attribute arc42_as_markdown:markdown \
    --attribute explain_stakeholders_as_markdown:markdown \
    --attribute explain_history_as_markdown:markdown \
    --attribute explain_authentication_as_markdown:markdown \
    --attribute explain_authorization_as_markdown:markdown \
    --attribute explain_use_cases_as_markdown:markdown \
    --attribute explain_demographics_as_markdown:markdown \
    --attribute explain_ui_as_markdown:markdown \
    --attribute explain_api_as_markdown:markdown \
    --attribute explain_data_as_markdown:markdown \
    --attribute explain_mobile_as_markdown:markdown \
    --attribute explain_legal_as_markdown:markdown \
    --attribute explain_financial_as_markdown:markdown \
    --attribute explain_service_level_agreement_as_markdown:markdown \
    --attribute explain_disaster_recovery_as_markdown:markdown \
    --attribute apache_echart_as_url:text \
    --attribute apache_echart_as_typescript:string \
    --attribute six_pager_double_sider_as_url:text \
    --attribute six_pager_double_sider_as_markdown:markdown \
    --attribute swot_as_url:text \
    --attribute swot_as_markdown:markdown \
    --attribute porters_five_forces_as_url:text \
    --attribute porters_five_forces_as_markdown:markdown \
    --attribute pestle_as_url:text \
    --attribute pestle_as_markdown:markdown \
    --attribute roles_and_responsibilities_as_url:text \
    --attribute roles_and_responsibilities_as_markdown:markdown \
    --attribute responsibility_assignment_matrix_as_url:text \
    --attribute responsibility_assignment_matrix_as_markdown:markdown \
    --attribute quality_availability_as_url:text \
    --attribute quality_availability_as_markdown:markdown \
    --attribute quality_certifiability_as_url:text \
    --attribute quality_certifiability_as_markdown:markdown \
    --attribute quality_compatibility_as_url:text \
    --attribute quality_compatibility_as_markdown:markdown \
    --attribute quality_efficiency_as_url:text \
    --attribute quality_efficiency_as_markdown:markdown \
    --attribute quality_governability_as_url:text \
    --attribute quality_governability_as_markdown:markdown \
    --attribute quality_maintainability_as_url:text \
    --attribute quality_maintainability_as_markdown:markdown \
    --attribute quality_observability_as_url:markdown \
    --attribute quality_observability_as_markdown:markdown \
    --attribute quality_operability_as_markdown:text \
    --attribute quality_operability_as_markdown:markdown \
    --attribute quality_recoverability_as_url:text \
    --attribute quality_recoverability_as_markdown:markdown \
    --attribute quality_scalability_as_url:text \
    --attribute quality_scalability_as_markdown:markdown \
    --attribute quality_security_as_url:text \
    --attribute quality_security_as_markdown:markdown \
    --attribute quality_suitability_as_url:markdown \
    --attribute quality_suitability_as_markdown:markdown \
    --attribute quality_testability_as_url:text \
    --attribute quality_testability_as_markdown:markdown \
    --attribute quality_transferability_as_url:text \
    --attribute quality_transferability_as_markdown:markdown \
    --attribute quality_translatability_as_url:text \
    --attribute quality_translatability_as_markdown:markdown \
    --attribute quality_warrantability_as_url:text \
    --attribute quality_warrantability_as_markdown:markdown \
    --attribute burn_rate_net_cash_per_week_actual:decimal \
    --attribute burn_rate_net_cash_per_week_target:decimal \
    --attribute burn_rate_net_cash_per_week_ratio:decimal \
    --attribute burn_rate_net_cash_per_week_unit:string \
    --attribute burn_rate_net_cash_per_week_description:string \
    --attribute burn_rate_net_time_per_week_actual:decimal \
    --attribute burn_rate_net_time_per_week_target:decimal \
    --attribute burn_rate_net_time_per_week_ratio:decimal \
    --attribute burn_rate_net_time_per_week_unit:string \
    --attribute burn_rate_net_time_per_week_description:string \
    --attribute net_promoter_score_customer_perspective_actual:decimal \
    --attribute net_promoter_score_customer_perspective_expect:decimal \
    --attribute net_promoter_score_customer_perspective_ratio:decimal \
    --attribute net_promoter_score_customer_perspective_unit:text \
    --attribute net_promoter_score_customer_perspective_description_as_markdown:text \
    --attribute net_promoter_score_user_perspective_actual:decimal \
    --attribute net_promoter_score_user_perspective_expect:decimal \
    --attribute net_promoter_score_user_perspective_ratio:decimal \
    --attribute net_promoter_score_user_perspective_unit:text \
    --attribute net_promoter_score_user_perspective_description_as_markdown:text \
    --attribute net_promoter_score_worker_perspective_actual:decimal \
    --attribute net_promoter_score_worker_perspective_expect:decimal \
    --attribute net_promoter_score_worker_perspective_ratio:decimal \
    --attribute net_promoter_score_worker_perspective_unit:text \
    --attribute net_promoter_score_worker_perspective_description_as_markdown:text \
    --attribute earned_value_management_planned_value:decimal \
    --attribute earned_value_management_earned_value:decimal \
    --attribute earned_value_management_actual_cost:decimal \
    --attribute earned_value_management_cost_variance:decimal \
    --attribute earned_value_management_cost_variance_ratio:decimal \
    --attribute earned_value_management_cost_performance_index:decimal \
    --attribute earned_value_management_schedule_variance:decimal \
    --attribute earned_value_management_schedule_variance_ratio:decimal \
    --attribute earned_value_management_schedule_performance_index:decimal \
    --attribute total_project_control_dipp:decimal \
    --attribute total_project_control_dipp_progress_index_ratio:decimal \
    --attribute total_project_control_dipp_progress_index_numerator:decimal \
    --attribute total_project_control_dipp_progress_index_denominator:decimal \
    --attribute total_project_control_expected_monetary_value:decimal \
    --attribute total_project_control_cost_estimate_to_complete:decimal \
    --attribute active_users_actual:decimal \
    --attribute active_users_target:decimal \
    --attribute active_users_ratio:decimal \
    --attribute active_users_unit:string \
    --attribute active_users_description:string \
    --attribute uptime_percentage_actual:decimal \
    --attribute uptime_percentage_target:decimal \
    --attribute uptime_percentage_ratio:decimal \
    --attribute uptime_percentage_unit:string \
    --attribute uptime_percentage_description:string \
    --attribute maintainability_index_actual:decimal \
    --attribute maintainability_index_target:decimal \
    --attribute maintainability_index_ratio:decimal \
    --attribute maintainability_index_unit:string \
    --attribute maintainability_index_description:string \
    --attribute line_count_actual:decimal \
    --attribute line_count_target:decimal \
    --attribute line_count_ratio:decimal \
    --attribute line_count_unit:string \
    --attribute line_count_description:string \
    --attribute test_automation_code_coverage_actual:decimal \
    --attribute test_automation_code_coverage_target:decimal \
    --attribute test_automation_code_coverage_ratio:decimal \
    --attribute test_automation_code_coverage_unit:string \
    --attribute test_automation_code_coverage_description:string \
    --attribute halstead_complexity_volume_actual:decimal \
    --attribute halstead_complexity_volume_target:decimal \
    --attribute halstead_complexity_volume_ratio:decimal \
    --attribute halstead_complexity_volume_unit:text \
    --attribute halstead_complexity_volume_description:text \
    --attribute halstead_complexity_difficulty_actual:decimal \
    --attribute halstead_complexity_difficulty_target:decimal \
    --attribute halstead_complexity_difficulty_ratio:decimal \
    --attribute halstead_complexity_difficulty_unit:text \
    --attribute halstead_complexity_difficulty_description:text \
    --attribute halstead_complexity_effort_actual:decimal \
    --attribute halstead_complexity_effort_target:decimal \
    --attribute halstead_complexity_effort_ratio:decimal \
    --attribute halstead_complexity_effort_unit:decimal \
    --attribute halstead_complexity_effort_description:decimal \
    --attribute deployment_frequency_actual:decimal \
    --attribute deployment_frequency_target:decimal \
    --attribute deployment_frequency_ratio:decimal \
    --attribute deployment_frequency_unit:text \
    --attribute deployment_frequency_description:text \
    --attribute lead_time_for_changes_actual:decimal \
    --attribute lead_time_for_changes_target:decimal \
    --attribute lead_time_for_changes_ratio:decimal \
    --attribute lead_time_for_changes_unit:text \
    --attribute lead_time_for_changes_description:text \
    --attribute change_failure_rate_actual:decimal \
    --attribute change_failure_rate_target:decimal \
    --attribute change_failure_rate_ratio:decimal \
    --attribute change_failure_rate_unit:text \
    --attribute change_failure_rate_description:text \
    --attribute mean_time_to_recovery_actual:decimal \
    --attribute mean_time_to_recovery_target:decimal \
    --attribute mean_time_to_recovery_ratio:decimal \
    --attribute mean_time_to_recovery_unit:text \
    --attribute mean_time_to_recovery_description:text \

mix ash.codegen create_initiatives
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_initiatives.exs

mkdir -p lib/my_app_web/live/initiatives
touch lib/my_app_web/live/initiatives/form_live.ex
touch lib/my_app_web/live/initiatives/index_live.ex
touch lib/my_app_web/live/initiatives/show_live.ex

mkdir -p test/my_app_web/live/initiatives
touch test/my_app_web/live/initiatives/form_live.ex
touch test/my_app_web/live/initiatives/index_live.ex
touch test/my_app_web/live/initiatives/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/initiatives", Initiatives.IndexLive
live "/initiatives/new", Initiatives.FormLive, :new
live "/initiatives/:id", Initiatives.ShowLive
live "/initiatives/:id/edit", Initiatives.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/works/initiative.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
