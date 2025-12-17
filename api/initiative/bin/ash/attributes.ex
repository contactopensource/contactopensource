
defmodule MyApp.MyDomain.Initiative.Attributes do
  use Spark.Dsl.Fragment, of: Ash.Resource

  attributes do

    attribute :id, :uuid do
      primary_key? true
      description "Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users."
    end

    attribute :lock_version, :integer do
      description "This is for optimistic locking."
    end

    attribute :created_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :created_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :updated_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :updated_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :retired_at, :timestamp_utc_usec do
      description "The time when this happened."
    end

    attribute :retired_by, :text do
      description "The user/agent/service/etc. that did this."
    end

    attribute :locale_code, :string do
      description "An international locale identifier, such as the id of locale \"English - United States\"."
    end

    attribute :tagging, :string do
      description "A tagging list that is space-separated and without any hash marks."
    end

    attribute :name, :string do
      description "The card name a.k.a. card title, typically displayed in large font size on the card, such as a H1 headline, or a person's name."
    end

    attribute :subname, :string do
      description "The card subname a.k.a. card subtitle, typically displayed medium font size on the card, such as a H2 headline, or a person's handle."
    end

    attribute :slug, :string do
      description "The card slug suitable for a web URL using kebab case or equivalent internationalization. This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems."
    end

    attribute :summary, :string do
      description "This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems."
    end

    attribute :description, :text do
      description "Describe this item. This can be as long as you wish."
    end

    attribute :disambiguation, :text do
      description "Explain differences between this item and other items. This can be as long as you wish."
    end

    attribute :sign, :text do
      description "An optional one-character sign, such as an emoji indicator."
    end

    attribute :kind, :string do
      description "A category class, such as a useful way to sort or subset the resource."
    end

    attribute :star_count, :integer do
      description "A star count from 1-5, such as for a rating, or review, or priority, etc."
    end

    attribute :quick_response_code_id, :quick_response_code.id do
      description "A quick-response (QR) code that uniquely identifies this card."
    end

    attribute :universal_product_code_id, :universal_product_code.id do
      description "A universal product code (UPC) that uniquely identifies this card."
    end

    attribute :avatar_image_400x400_url, :text do
      description "An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as a URL."
    end

    attribute :avatar_image_400x400_alt, :text do
      description "An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as an alternate text description."
    end

    attribute :main_image_1080x1080_url, :text do
      description "A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as a URL."
    end

    attribute :main_image_1080x1080_alt, :text do
      description "A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as an alternate text description."
    end

    attribute :main_image_1920x1080_url, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL."
    end

    attribute :main_image_1920x1080_alt, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description."
    end

    attribute :main_image_1080x1920_url, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL."
    end

    attribute :main_image_1080x1920_alt, :text do
      description "A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description."
    end

    attribute :status, :string do
      description "Status"
    end

    attribute :tagging, :string do
      description "Tagging"
    end

    attribute :url, :text do
    end

    attribute :email, :string do
    end

    attribute :phone, :string do
    end

    attribute :messaging, :string do
    end

    attribute :postal, :string do
    end

    attribute :orcid_pid, :string do
    end

    attribute :rdf_type, :string do
    end

    attribute :linkedin_url, :text do
    end

    attribute :github_url, :text do
    end

    attribute :codeberg_url, :text do
    end

    attribute :agents_as_url, :text do
    end

    attribute :agents_as_markdown, :markdown do
    end

    attribute :home_emoji_url, :text do
    end

    attribute :bellhop_bell_emoji_url, :text do
    end

    attribute :target_emoji_url, :text do
    end

    attribute :gear_emoji_url, :text do
    end

    attribute :spiral_calendar_emoji_url, :text do
    end

    attribute :sparkles_emoji_url, :text do
    end

    attribute :speech_bubble_emoji_url, :text do
    end

    attribute :newspaper_emoji_url, :text do
    end

    attribute :bar_chart_emoji_url, :text do
    end

    attribute :movie_camera_emoji_url, :text do
    end

    attribute :construction_worker_emoji_url, :text do
    end

    attribute :crystal_ball_emoji_url, :text do
    end

    attribute :butterfly_emoji_url, :text do
    end

    attribute :lady_beetle_emoji_url, :text do
    end

    attribute :note, :string do
    end

    attribute :email_distribution_list, :string do
    end

    attribute :daisyui_timeline_html, :string do
    end

    attribute :org_mode, :string do
    end

    attribute :task_list_as_markdown, :markdown do
    end

    attribute :ways_of_working_as_markdown, :markdown do
    end

    attribute :objectives_and_key_results_as_url, :text do
    end

    attribute :objectives_and_key_results_as_markdown, :markdown do
    end

    attribute :key_performance_indicators_as_url, :markdown do
    end

    attribute :key_performance_indicators_as_markdown, :markdown do
    end

    attribute :glossary_as_url, :text do
    end

    attribute :glossary_as_markdown, :markdown do
    end

    attribute :code_of_conduct_url, :text do
    end

    attribute :code_of_conduct_as_markdown, :markdown do
    end

    attribute :license_url, :text do
    end

    attribute :license_as_markdown, :markdown do
    end

    attribute :arc42_as_url, :text do
    end

    attribute :arc42_as_markdown, :markdown do
    end

    attribute :explain_stakeholders_as_markdown, :markdown do
    end

    attribute :explain_history_as_markdown, :markdown do
    end

    attribute :explain_authentication_as_markdown, :markdown do
    end

    attribute :explain_authorization_as_markdown, :markdown do
    end

    attribute :explain_use_cases_as_markdown, :markdown do
    end

    attribute :explain_demographics_as_markdown, :markdown do
    end

    attribute :explain_ui_as_markdown, :markdown do
    end

    attribute :explain_api_as_markdown, :markdown do
    end

    attribute :explain_data_as_markdown, :markdown do
    end

    attribute :explain_mobile_as_markdown, :markdown do
    end

    attribute :explain_legal_as_markdown, :markdown do
    end

    attribute :explain_financial_as_markdown, :markdown do
    end

    attribute :explain_service_level_agreement_as_markdown, :markdown do
    end

    attribute :explain_disaster_recovery_as_markdown, :markdown do
    end

    attribute :apache_echart_as_url, :text do
    end

    attribute :apache_echart_as_typescript, :string do
    end

    attribute :six_pager_double_sider_as_url, :text do
      description "Six-pager double-sider explanation, as URL"
    end

    attribute :six_pager_double_sider_as_markdown, :markdown do
      description "Six-pager double-sider explanation, as markdown"
    end

    attribute :swot_as_url, :text do
      description "Strengths Weaknesses Opportunities Threats (SWOT), as URL"
    end

    attribute :swot_as_markdown, :markdown do
      description "Strengths Weaknesses Opportunities Threats (SWOT), as markdown"
    end

    attribute :porters_five_forces_as_url, :text do
      description "Porter's Five Forces, as URL"
    end

    attribute :porters_five_forces_as_markdown, :markdown do
      description "Porter's Five Forces, as markdown"
    end

    attribute :pestle_as_url, :text do
      description "Political, Economic, Sociological, Technological, Legal, Environmental (PESTLE), as URL"
    end

    attribute :pestle_as_markdown, :markdown do
      description "Political, Economic, Sociological, Technological, Legal, Environmental (PESTLE), as markdown"
    end

    attribute :roles_and_responsibilities_as_url, :text do
      description "Roles and Responsibilities, as URL"
    end

    attribute :roles_and_responsibilities_as_markdown, :markdown do
      description "Roles and Responsibilities, as markdown"
    end

    attribute :responsibility_assignment_matrix_as_url, :text do
      description "Responsibility Assignment Matrix (RAM) such as a RASCIO Matrix, as URL"
    end

    attribute :responsibility_assignment_matrix_as_markdown, :markdown do
      description "Responsibility Assignment Matrix (RAM) such as a RASCIO Matrix, as markdown"
    end

    attribute :quality_availability_as_url, :text do
      description "Quality documentation about availability, as URL"
    end

    attribute :quality_availability_as_markdown, :markdown do
      description "Quality documentation about availability, as markdown"
    end

    attribute :quality_certifiability_as_url, :text do
      description "Quality documentation about certifiability, as URL"
    end

    attribute :quality_certifiability_as_markdown, :markdown do
      description "Quality documentation about certifiability, as markdown"
    end

    attribute :quality_compatibility_as_url, :text do
      description "Quality documentation about compatibility, as URL"
    end

    attribute :quality_compatibility_as_markdown, :markdown do
      description "Quality documentation about compatibility, as markdown"
    end

    attribute :quality_efficiency_as_url, :text do
      description "Quality documentation about efficiency, as URL"
    end

    attribute :quality_efficiency_as_markdown, :markdown do
      description "Quality documentation about efficiency, as markdown"
    end

    attribute :quality_governability_as_url, :text do
      description "Quality documentation about governability, as URL"
    end

    attribute :quality_governability_as_markdown, :markdown do
      description "Quality documentation about governability, as markdown"
    end

    attribute :quality_maintainability_as_url, :text do
      description "Quality documentation about maintainability, as URL"
    end

    attribute :quality_maintainability_as_markdown, :markdown do
      description "Quality documentation about maintainability, as markdown"
    end

    attribute :quality_observability_as_url, :markdown do
      description "Quality documentation about observability, as URL"
    end

    attribute :quality_observability_as_markdown, :markdown do
      description "Quality documentation about observability, as markdown"
    end

    attribute :quality_operability_as_markdown, :text do
      description "Quality documentation about operability, as URL"
    end

    attribute :quality_operability_as_markdown, :markdown do
      description "Quality documentation about operability, as markdown"
    end

    attribute :quality_recoverability_as_url, :text do
      description "Quality documentation about recoverability, as URL"
    end

    attribute :quality_recoverability_as_markdown, :markdown do
      description "Quality documentation about recoverability, as markdown"
    end

    attribute :quality_scalability_as_url, :text do
      description "Quality documentation about scalability, as URL"
    end

    attribute :quality_scalability_as_markdown, :markdown do
      description "Quality documentation about scalability, as markdown"
    end

    attribute :quality_security_as_url, :text do
      description "Quality documentation about security, as URL"
    end

    attribute :quality_security_as_markdown, :markdown do
      description "Quality documentation about security, as markdown"
    end

    attribute :quality_suitability_as_url, :markdown do
      description "Quality documentation about suitability, as URL"
    end

    attribute :quality_suitability_as_markdown, :markdown do
      description "Quality documentation about suitability, as markdown"
    end

    attribute :quality_testability_as_url, :text do
      description "Quality documentation about testability, as URL"
    end

    attribute :quality_testability_as_markdown, :markdown do
      description "Quality documentation about testability, as markdown"
    end

    attribute :quality_transferability_as_url, :text do
      description "Quality documentation about transferability, as URL"
    end

    attribute :quality_transferability_as_markdown, :markdown do
      description "Quality documentation about transferability, as markdown"
    end

    attribute :quality_translatability_as_url, :text do
      description "Quality documentation about translatability, as URL"
    end

    attribute :quality_translatability_as_markdown, :markdown do
      description "Quality documentation about translatability, as markdown"
    end

    attribute :quality_warrantability_as_url, :text do
      description "Quality documentation about warrantability, as URL"
    end

    attribute :quality_warrantability_as_markdown, :markdown do
      description "Quality documentation about warrantability, as markdown"
    end

    attribute :burn_rate_net_cash_per_week_actual, :decimal do
      description "Burn rate net cash per week actual value"
    end

    attribute :burn_rate_net_cash_per_week_target, :decimal do
      description "Burn rate net cash per week target value"
    end

    attribute :burn_rate_net_cash_per_week_ratio, :decimal do
      description "Burn rate net cash per week ratio = (actual / target)"
    end

    attribute :burn_rate_net_cash_per_week_unit, :string do
      description "Burn rate net cash per week unit"
    end

    attribute :burn_rate_net_cash_per_week_description, :string do
      description "Burn rate net cash per week description"
    end

    attribute :burn_rate_net_time_per_week_actual, :decimal do
      description "Burn rate net time per week actual value"
    end

    attribute :burn_rate_net_time_per_week_target, :decimal do
      description "Burn rate net time per week target value"
    end

    attribute :burn_rate_net_time_per_week_ratio, :decimal do
      description "Burn rate net time per week ratio = (actual / target)"
    end

    attribute :burn_rate_net_time_per_week_unit, :string do
      description "Burn rate net time per week unit"
    end

    attribute :burn_rate_net_time_per_week_description, :string do
      description "Burn rate net time per week description"
    end

    attribute :net_promoter_score_customer_perspective_actual, :decimal do
      description "Net Promoter Score (NPS) customer perspective, actual value"
    end

    attribute :net_promoter_score_customer_perspective_expect, :decimal do
      description "Net Promoter Score (NPS) customer perspective, expect value"
    end

    attribute :net_promoter_score_customer_perspective_ratio, :decimal do
      description "Net Promoter Score (NPS) customer perspective, ratio = (actual / expect)"
    end

    attribute :net_promoter_score_customer_perspective_unit, :text do
      description "Net Promoter Score (NPS) customer perspective, unit"
    end

    attribute :net_promoter_score_customer_perspective_description_as_markdown, :text do
      description "Net Promoter Score (NPS) customer perspective, description as markdown"
    end

    attribute :net_promoter_score_user_perspective_actual, :decimal do
      description "Net Promoter Score (NPS) user perspective, actual value"
    end

    attribute :net_promoter_score_user_perspective_expect, :decimal do
      description "Net Promoter Score (NPS) user perspective, expect value"
    end

    attribute :net_promoter_score_user_perspective_ratio, :decimal do
      description "Net Promoter Score (NPS) user perspective, ratio = (actual / expect)"
    end

    attribute :net_promoter_score_user_perspective_unit, :text do
      description "Net Promoter Score (NPS) user perspective, unit"
    end

    attribute :net_promoter_score_user_perspective_description_as_markdown, :text do
      description "Net Promoter Score (NPS) user perspective, description as markdown"
    end

    attribute :net_promoter_score_worker_perspective_actual, :decimal do
      description "Net Promoter Score (NPS) worker perspective, actual value"
    end

    attribute :net_promoter_score_worker_perspective_expect, :decimal do
      description "Net Promoter Score (NPS) worker perspective, expect value"
    end

    attribute :net_promoter_score_worker_perspective_ratio, :decimal do
      description "Net Promoter Score (NPS) worker perspective, ratio = (actual / expect)"
    end

    attribute :net_promoter_score_worker_perspective_unit, :text do
      description "Net Promoter Score (NPS) worker perspective, unit"
    end

    attribute :net_promoter_score_worker_perspective_description_as_markdown, :text do
      description "Net Promoter Score (NPS) worker perspective, description as markdown"
    end

    attribute :earned_value_management_planned_value, :decimal do
      description "Earned Value Management (EVM) Planned Value (PV)"
    end

    attribute :earned_value_management_earned_value, :decimal do
      description "Earned Value Management (EVM) Earned Value (EV)"
    end

    attribute :earned_value_management_actual_cost, :decimal do
      description "Earned Value Management (EVM) Actual Cost (AC)"
    end

    attribute :earned_value_management_cost_variance, :decimal do
      description "Earned Value Management (EVM) Cost Variance (CV)

- Cost Variance (CV) = Earned Value (EV) – Actual Cost (AC)

- Positive: ahead of budget a.k.a. cost underrun

- Negative: behind budget a.k.a. cost overrun"
    end

    attribute :earned_value_management_cost_variance_ratio, :decimal do
      description "Earned Value Management (EVM) Cost Variance Ratio (CVR)"
    end

    attribute :earned_value_management_cost_performance_index, :decimal do
      description "Earned Value Management (EVM) Cost Performance Index (CVI)

- Cost Performance Index (CPI) = Earned Value (EV) / Actual Cost (AC)

- Positive: cost is less than budgeted

- Negative: cost is greater than budgeted"
    end

    attribute :earned_value_management_schedule_variance, :decimal do
      description "Earned Value Management (EVM) Schedule Variance (SV)

- Schedule Variance (SV) = Earned Value (EV) – Planned Value (PV)

- Positive: ahead of schedule a.k.a. time underrun

- Negative: behind schedule a.,k.a. time overrun"
    end

    attribute :earned_value_management_schedule_variance_ratio, :decimal do
      description "Earned Value Management (EVM) Schedule Variance Ratio (SVR)"
    end

    attribute :earned_value_management_schedule_performance_index, :decimal do
      description "Earned Value Management (EVM) Schedule Performance Index (SPI)

- Schedule Performance Index (SPI) = Earned Value (EV) / Planned Value (PV)

- Positive: ahead of schedule

- Negative: behind schedule"
    end

    attribute :total_project_control_dipp, :decimal do
      description "Total Project Control (TPC) Devaux's Index of Project Performance (DIPP)"
    end

    attribute :total_project_control_dipp_progress_index_ratio, :decimal do
      description "Total Project Control (TPC) Devaux's Index of Project Performance (DIPP) Progress Index (PI)"
    end

    attribute :total_project_control_dipp_progress_index_numerator, :decimal do
      description "Total Project Control (TPC) Devaux's Index of Project Performance (DIPP) Progress Index (PI) Numerator"
    end

    attribute :total_project_control_dipp_progress_index_denominator, :decimal do
      description "Total Project Control (TPC) Devaux's Index of Project Performance (DIPP) Progress Index (PI) Denominator"
    end

    attribute :total_project_control_expected_monetary_value, :decimal do
      description "Total Project Control (TPC) Expected Monetary Value (EMV)"
    end

    attribute :total_project_control_cost_estimate_to_complete, :decimal do
      description "Total Project Control (TPC) Cost Estimate to Complete (CEC)"
    end

    attribute :active_users_actual, :decimal do
      description "Active users actual value"
    end

    attribute :active_users_target, :decimal do
      description "Active users target value"
    end

    attribute :active_users_ratio, :decimal do
      description "Active users ratio = (actual / target)"
    end

    attribute :active_users_unit, :string do
      description "Active users unit"
    end

    attribute :active_users_description, :string do
      description "Active users description"
    end

    attribute :uptime_percentage_actual, :decimal do
      description "Uptime percentage actual value"
    end

    attribute :uptime_percentage_target, :decimal do
      description "Uptime percentage target value"
    end

    attribute :uptime_percentage_ratio, :decimal do
      description "Uptime percentage ratio = (actual / target)"
    end

    attribute :uptime_percentage_unit, :string do
      description "Uptime percentage unit"
    end

    attribute :uptime_percentage_description, :string do
      description "Uptime percentage description"
    end

    attribute :maintainability_index_actual, :decimal do
      description "Maintainability index actual value"
    end

    attribute :maintainability_index_target, :decimal do
      description "Maintainability index target value"
    end

    attribute :maintainability_index_ratio, :decimal do
      description "Maintainability index ration (actual / target)"
    end

    attribute :maintainability_index_unit, :string do
      description "Maintainability index unit"
    end

    attribute :maintainability_index_description, :string do
      description "Maintainability index description"
    end

    attribute :line_count_actual, :decimal do
      description "Line count actual value"
    end

    attribute :line_count_target, :decimal do
      description "Line count target value"
    end

    attribute :line_count_ratio, :decimal do
      description "Line count ratio = (actual / target)"
    end

    attribute :line_count_unit, :string do
      description "Line count unit"
    end

    attribute :line_count_description, :string do
      description "Line count description"
    end

    attribute :test_automation_code_coverage_actual, :decimal do
      description "Test automation code coverage actual value"
    end

    attribute :test_automation_code_coverage_target, :decimal do
      description "Test automation code coverage target value"
    end

    attribute :test_automation_code_coverage_ratio, :decimal do
      description "Test automation code coverage ratio = (actual / target)"
    end

    attribute :test_automation_code_coverage_unit, :string do
      description "Test automation code coverage unit"
    end

    attribute :test_automation_code_coverage_description, :string do
      description "Test automation code coverage description"
    end

    attribute :halstead_complexity_volume_actual, :decimal do
      description "Halstead complexity volume actual value"
    end

    attribute :halstead_complexity_volume_target, :decimal do
      description "Halstead complexity target value"
    end

    attribute :halstead_complexity_volume_ratio, :decimal do
      description "Halstead complexity volume ratio = (actual / target)"
    end

    attribute :halstead_complexity_volume_unit, :text do
      description "Halstead complexity volume unit"
    end

    attribute :halstead_complexity_volume_description, :text do
      description "Halstead complexity volume description"
    end

    attribute :halstead_complexity_difficulty_actual, :decimal do
      description "Halstead complexity difficulty actual value"
    end

    attribute :halstead_complexity_difficulty_target, :decimal do
      description "Halstead complexity difficulty target value"
    end

    attribute :halstead_complexity_difficulty_ratio, :decimal do
      description "Halstead complexity difficulty ratio = (actual / target)"
    end

    attribute :halstead_complexity_difficulty_unit, :text do
      description "Halstead complexity difficulty unit"
    end

    attribute :halstead_complexity_difficulty_description, :text do
      description "Halstead complexity difficulty description"
    end

    attribute :halstead_complexity_effort_actual, :decimal do
      description "Halstead complexity effort actual value"
    end

    attribute :halstead_complexity_effort_target, :decimal do
      description "Halstead complexity effort target value"
    end

    attribute :halstead_complexity_effort_ratio, :decimal do
      description "Halstead complexity effort ratio = (actual / target)"
    end

    attribute :halstead_complexity_effort_unit, :decimal do
      description "Halstead complexity effort unit"
    end

    attribute :halstead_complexity_effort_description, :decimal do
      description "Halstead complexity effort description"
    end

    attribute :deployment_frequency_actual, :decimal do
      description "Deployment frequency actual value"
    end

    attribute :deployment_frequency_target, :decimal do
      description "Deployment frequency target value"
    end

    attribute :deployment_frequency_ratio, :decimal do
      description "Deployment frequency ratio = (actual / target)"
    end

    attribute :deployment_frequency_unit, :text do
      description "Deployment frequency unit"
    end

    attribute :deployment_frequency_description, :text do
      description "deployment frequency description"
    end

    attribute :mean_lead_time_for_changes_actual, :decimal do
      description "Mean lead time for changes actual value"
    end

    attribute :mean_lead_time_for_changes_target, :decimal do
      description "Mean lead time for changes target value"
    end

    attribute :mean_lead_time_for_changes_ratio, :decimal do
      description "Mean lead time for changes ratio = (actual / target)"
    end

    attribute :mean_lead_time_for_changes_unit, :text do
      description "Mean lead time for changes unit"
    end

    attribute :mean_lead_time_for_changes_description, :text do
      description "Mean lead time for changes description"
    end

    attribute :change_failure_rate_actual, :decimal do
      description "Change failure rate actual value"
    end

    attribute :change_failure_rate_target, :decimal do
      description "Change failure rate target value"
    end

    attribute :change_failure_rate_ratio, :decimal do
      description "Change failure rate ratio = (actual / target)"
    end

    attribute :change_failure_rate_unit, :text do
      description "Change failure rate unit"
    end

    attribute :change_failure_rate_description, :text do
      description "Change failure rate description"
    end

    attribute :failed_deployment_recovery_time_actual, :decimal do
      description "Failed deployment recovery time actual value"
    end

    attribute :failed_deployment_recovery_time_target, :decimal do
      description "Failed deployment recovery time target value"
    end

    attribute :failed_deployment_recovery_time_ratio, :decimal do
      description "Failed deployment recovery time (actual / target)"
    end

    attribute :failed_deployment_recovery_time_unit, :text do
      description "Failed deployment recovery time unit"
    end

    attribute :failed_deployment_recovery_time_description, :text do
      description "Failed deployment recovery time description"
    end

    attribute :reliability_actual, :decimal do
      description "Reliability actual value"
    end

    attribute :reliability_target, :decimal do
      description "Reliability target value"
    end

    attribute :reliability_ratio, :decimal do
      description "Reliability (actual / target)"
    end

    attribute :reliability_unit, :text do
      description "Reliability unit"
    end

    attribute :reliability_description, :text do
      description "Reliability description"
    end

  end
end
