CREATE TABLE initiative (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT initiative_parent_id_fk REFERENCES initiative (id),
  parent_order int CONSTRAINT initiative_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT initiative_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- ai
  ai_agent_instructions_as_url text CONSTRAINT initiative_ai_agent_instructions_as_url CHECK (ai_agent_instructions_as_url ~* '^https://'),
  ai_agent_instructions_as_markdown text,
  --- contact
  web text CONSTRAINT initiative_web_check CHECK (web ~* '^https://'),
  email text CONSTRAINT initiative_email_check CHECK (email ~*  '.@.'),
  phone text,
  chat text,
  calendar text,
  postal text,
  rdf_type text,
  --- social
  bluesky_as_url text CONSTRAINT initiative_bluesky_as_url_check CHECK (bluesky_as_url ~* '^https://bsky\.app/'),
  codeberg_as_url text CONSTRAINT initiative_codeberg_as_url_check CHECK (codeberg_as_url ~* '^https://codeberg\.org/'),
  facebook_as_url text CONSTRAINT initiative_facebook_as_url_check CHECK (facebook_as_url ~* '^https://facebook\.com/'),
  github_as_url text CONSTRAINT initiative_github_as_url_check CHECK (github_as_url ~* '^https://github\.com/'),
  instagram_as_url text CONSTRAINT initiative_instagram_as_url_check CHECK (instagram_as_url ~* '^https://instagram\.com/'),
  linkedin_as_url text CONSTRAINT initiative_linkedin_as_url_check CHECK (linkedin_as_url ~* '^https://linkedin\.com/'),
  mastodon_as_url text CONSTRAINT initiative_mastodon_as_url_check CHECK (mastodon_as_url ~* '^https://'),
  orcid_as_url text CONSTRAINT initiative_orcid_as_url_check CHECK (orcid_as_url ~* '^https://orcid\.org/'),
  tiktok_as_url text CONSTRAINT initiative_tiktok_as_url_check CHECK (tiktok_as_url ~* '^https://tiktok\.com/'),
  wikipedia_as_url text CONSTRAINT initiative_wikipedia_uri_check CHECK (wikipedia_as_url ~* '^https://wikipedia\.org/'),
  youtube_as_url text CONSTRAINT initiative_youtube_as_url_check CHECK (youtube_as_url ~* '^https://youtube\.com/'),
  --- location
  location_iso_3166_1_alpha_2 char(2) CONSTRAINT initiative_location_iso_3166_1_alpha_2_check CHECK (location_iso_3166_1_alpha_2 ~* '^[a-z][a-z]$'),
  location_iso_3166_2 text,
  location_postal_code text,
  location_latitude_as_decimal_degrees numeric(9, 7) CONSTRAINT initiative_location_latitude_as_decimal_degrees_check CHECK (location_latitude_as_decimal_degrees BETWEEN -90.0 AND 90.0),
  location_longitude_as_decimal_degrees numeric(10, 7) CONSTRAINT initiative_location_longitude_as_decimal_degrees_check CHECK (location_longitude_as_decimal_degrees BETWEEN -180.0 AND 180.0),
  --- images
  avatar_image_400x400_url text CONSTRAINT initiative_avatar_image_400x400_url_check CHECK (avatar_image_400x400_url ~* '^https://'),
  avatar_image_400x400_alt text,
  main_image_1080x1080_url text CONSTRAINT initiative_main_image_1080x1080_url_check CHECK (main_image_1080x1080_url ~* '^https://'),
  main_image_1080x1080_alt text,
  main_image_1920x1080_url text CONSTRAINT initiative_main_image_1920x1080_url_check CHECK (main_image_1920x1080_url ~* '^https://'),
  main_image_1920x1080_alt text,
  main_image_1080x1920_url text CONSTRAINT initiative_main_image_1080x1920_url_check CHECK (main_image_1080x1920_url ~* '^https://'),
  main_image_1080x1920_alt text,
  --- statements
  purpose_statement text,
  vision_statement text,
  mission_statement text,
  values_statement text,
  --- emoji
  home_emoji_url text CONSTRAINT initiative_home_emoji_url_check CHECK (home_emoji_url ~* '^https://'),
  bellhop_bell_emoji_url text CONSTRAINT initiative_bellhop_bell_emoji_url_check CHECK (bellhop_bell_emoji_url ~* '^https://'),
  target_emoji_url text CONSTRAINT initiative_target_emoji_url_check CHECK (target_emoji_url ~* '^https://'),
  gear_emoji_url text CONSTRAINT initiative_gear_emoji_url_check CHECK (gear_emoji_url ~* '^https://'),
  spiral_calendar_emoji_url text CONSTRAINT initiative_spiral_calendar_emoji_url_check CHECK (spiral_calendar_emoji_url ~* '^https://'),
  sparkles_emoji_url text CONSTRAINT initiative_sparkles_emoji_url_check CHECK (sparkles_emoji_url ~* '^https://'),
  speech_bubble_emoji_url text CONSTRAINT initiative_speech_bubble_emoji_url_check CHECK (speech_bubble_emoji_url ~* '^https://'),
  newspaper_emoji_url text CONSTRAINT initiative_newspaper_emoji_url_check CHECK (newspaper_emoji_url ~* '^https://'),
  bar_chart_emoji_url text CONSTRAINT initiative_bar_chart_emoji_url_check CHECK (bar_chart_emoji_url ~* '^https://'),
  movie_camera_emoji_url text CONSTRAINT initiative_movie_camera_emoji_url_check CHECK (movie_camera_emoji_url ~* '^https://'),
  construction_worker_emoji_url text CONSTRAINT initiative_construction_worker_emoji_url_check CHECK (construction_worker_emoji_url ~* '^https://'),
  crystal_ball_emoji_url text CONSTRAINT initiative_crystal_ball_emoji_url_check CHECK (crystal_ball_emoji_url ~* '^https://'),
  butterfly_emoji_url text CONSTRAINT initiative_butterfly_emoji_url_check CHECK (butterfly_emoji_url ~* '^https://'),
  lady_beetle_emoji_url text CONSTRAINT initiative_lady_beetle_emoji_url_check CHECK (lady_beetle_emoji_url ~* '^https://'),
  --
  objectives_and_key_results_as_markdown text,
  key_performance_indicators_as_markdown text,
  glossary_as_url text CONSTRAINT initiative_glossary_as_url_check CHECK (glossary_as_url ~* '^https://'),
  glossary_as_markdown text,
  email_distribution_list text,
  daisyui_timeline_html text,
  org_mode text,
  task_list_as_markdown text,
  ways_of_working_as_markdown text,
  six_pager_double_sider_as_url text CONSTRAINT initiative_six_pager_double_sider_as_url_check CHECK (six_pager_double_sider_as_url ~* '^https://'),
  six_pager_double_sider_as_markdown text,
  role_and_responsibilities_as_url text CONSTRAINT initiative_role_and_responsibilities_as_url_check CHECK (role_and_responsibilities_as_url ~* '^https://'),
  role_and_responsibilities_as_markdown text,
  responsibility_assignment_matrix_as_url text CONSTRAINT initiative_responsibility_assignment_matrix_as_url_check CHECK (responsibility_assignment_matrix_as_url ~* '^https://'),
  responsibility_assignment_matrix_as_markdown text,
  --- industry codes
  gs1_digital_link text,
  gs1_country_code text,
  gs1_global_location_number text,
  isic_v4_code text,
  isic_v4_name text,
  -- smarter
  smart_as_url text CONSTRAINT initiative_smart_as_url_check CHECK (smart_as_url ~* '^https://'),
  smart_specific_as_markdown text,
  smart_measurable_as_markdown text,
  smart_achievable_as_markdown text,
  smart_relevant_as_markdown text,
  smart_timely_as_markdown text,
  -- swot
  swot_as_url text CONSTRAINT initiative_swot_as_url_check CHECK (swot_as_url ~* '^https://'),
  swot_strengths_as_markdown text,
  swot_weaknesses_as_markdown text,
  swot_opportunities_as_markdown text,
  swot_threats_as_markdown text,
  -- rice
  rice_as_url text CONSTRAINT initiative_rice_as_url_check CHECK (rice_as_url ~* '^https://'),
  rice_reach_as_markdown text,
  rice_impact_as_markdown text,
  rice_confidence_as_markdown text,
  rice_effort_as_markdown text,
  -- raid
  raid_as_url text CONSTRAINT initiative_raid_as_url_check CHECK (raid_as_url ~* '^https://'),
  raid_risks_as_markdown text,
  raid_assumptions_as_markdown text,
  raid_issues_as_markdown text,
  raid_dependencies_as_markdown text,
  -- rope
  rope_as_url text CONSTRAINT initiative_rope_as_url_check CHECK (rope_as_url ~* '^https://'),
  rope_realistic_as_markdown text,
  rope_optimistic_as_markdown text,
  rope_pessimistic_as_markdown text,
  rope_equilibristic_as_markdown text,
  --- sipoc
  sipoc_as_url text CONSTRAINT initiative_sipoc_as_url_check CHECK (sipoc_as_url ~* '^https://'),
  sipoc_suppliers_as_markdown text,
  sipoc_inputs_as_markdown text,
  sipoc_processes_as_markdown text,
  sipoc_outputs_as_markdown text,
  sipoc_customers_as_markdown text,
  --- steeple
  steeple_as_url text CONSTRAINT initiative_steeple_as_url_check CHECK (steeple_as_url ~* '^https://'),
  steeple_social_as_markdown text,
  steeple_technological_as_markdown text,
  steeple_economic_as_markdown text,
  steeple_environmental_as_markdown text,
  steeple_political_as_markdown text,
  steeple_legal_as_markdown text,
  steeple_ethical_as_markdown text,
  --- porters five forces
  porters_five_forces_as_url text CONSTRAINT initiative_porters_five_forces_as_url_check CHECK (porters_five_forces_as_url ~* '^https://'),
  porters_five_forces_entrants_as_markdown text,
  porters_five_forces_substitutes_as_markdown text,
  porters_five_forces_customers_as_markdown text,
  porters_five_forces_suppliers_as_markdown text,
  porters_five_forces_competitors_as_markdown text,
  --- invest
  invest_as_url text CONSTRAINT initiative_invest_as_url_check CHECK (invest_as_url ~* '^https://'),
  invest_independent_as_markdown text,
  invest_negotiable_as_markdown text,
  invest_valuable_as_markdown text,
  invest_estimable_as_markdown text,
  invest_small_as_markdown text,
  invest_testable_as_markdown text,
  --- policies
  code_of_conduct_policy_as_url text CONSTRAINT initiative_code_of_conduct_policy_as_url_check CHECK (code_of_conduct_policy_as_url ~* '^https://'),
  code_of_conduct_policy_as_markdown text,
  coordinated_disclosure_policy_as_url text CONSTRAINT initiative_coordinated_disclosure_policy_as_url_check CHECK (coordinated_disclosure_policy_as_url ~* '^https://'),
  coordinated_disclosure_policy_as_markdown text,
  copyright_policy_as_url text CONSTRAINT initiative_copyright_policy_as_url_check CHECK (copyright_policy_as_url ~* '^https://'),
  copyright_policy_as_markdown text,
  corrections_policy_as_url text CONSTRAINT initiative_corrections_policy_as_url_check CHECK (corrections_policy_as_url ~* '^https://'),
  corrections_policy_as_markdown text,
  diversity_policy_as_url text CONSTRAINT initiative_diversity_policy_as_url_check CHECK (diversity_policy_as_url ~* '^https://'),
  diversity_policy_as_markdown text,
  equal_opportunity_policy_as_url text CONSTRAINT initiative_equal_opportunity_policy_as_url_check CHECK (equal_opportunity_policy_as_url ~* '^https://'),
  equal_opportunity_policy_as_markdown text,
  ethics_policy_as_url text CONSTRAINT initiative_ethics_policy_as_url_check CHECK (ethics_policy_as_url ~* '^https://'),
  ethics_policy_as_markdown text,
  legal_policy_as_url text CONSTRAINT initiative_legal_policy_as_url_check CHECK (legal_policy_as_url ~* '^https://'),
  legal_policy_as_markdown text,
  license_policy_as_url text CONSTRAINT initiative_license_policy_as_url_check CHECK (license_policy_as_url ~* '^https://'),
  license_policy_as_markdown text,
  open_source_policy_as_url text CONSTRAINT initiative_open_source_policy_as_url_check CHECK (open_source_policy_as_url ~* '^https://'),
  open_source_policy_as_markdown text,
  privacy_policy_as_url text CONSTRAINT initiative_privacy_policy_as_url_check CHECK (privacy_policy_as_url ~* '^https://'),
  privacy_policy_as_markdown text,
  safety_policy_as_url text CONSTRAINT initiative_safety_policy_as_url_check CHECK (safety_policy_as_url ~* '^https://'),
  safety_policy_as_markdown text,
  security_policy_as_url text CONSTRAINT initiative_security_policy_as_url_check CHECK (security_policy_as_url ~* '^https://'),
  security_policy_as_markdown text,
  socials_policy_as_url text CONSTRAINT initiative_socials_policy_as_url_check CHECK (socials_policy_as_url ~* '^https://'),
  socials_policy_as_markdown text,
  staff_policy_as_url text CONSTRAINT initiative_staff_policy_as_url_check CHECK (staff_policy_as_url ~* '^https://'),
  staff_policy_as_markdown text,
  --- arc42
  arc42_as_url text CONSTRAINT initiative_arc42_as_url_check CHECK (arc42_as_url ~* '^https://'),
  arc42_01_introduction_and_goals_as_markdown text,
  arc42_02_constraints_as_markdown text,
  arc42_03_context_and_scope_as_markdown text,
  arc42_04_solution_strategy_as_markdown text,
  arc42_05_building_block_view_as_markdown text,
  arc42_06_runtime_view_as_markdown text,
  arc42_07_deployment_view_as_markdown text,
  arc42_08_crosscutting_concepts_as_markdown text,
  arc42_09_architectural_decisions_as_markdown text,
  arc42_10_quality_requirements_as_markdown text,
  arc42_11_risks_and_technical_debt_as_markdown text,
  arc42_12_glossary_as_markdown text,
  --- explain
  explain_stakeholders_as_markdown text,
  explain_history_as_markdown text,
  explain_authentication_as_markdown text,
  explain_authorization_as_markdown text,
  explain_use_cases_as_markdown text,
  explain_demographics_as_markdown text,
  explain_ui_as_markdown text,
  explain_api_as_markdown text,
  explain_data_as_markdown text,
  explain_mobile_as_markdown text,
  explain_legal_as_markdown text,
  explain_financial_as_markdown text,
  explain_service_level_agreement_as_markdown text,
  explain_disaster_recovery_as_markdown text,
  --- quality
  quality_availability_as_markdown text,
  quality_certifiability_as_markdown text,
  quality_compatibility_as_markdown text,
  quality_efficiency_as_markdown text,
  quality_governability_as_markdown text,
  quality_maintainability_as_markdown text,
  quality_observability_as_markdown text,
  quality_operability_as_markdown text,
  quality_recoverability_as_markdown text,
  quality_scalability_as_markdown text,
  quality_security_as_markdown text,
  quality_suitability_as_markdown text,
  quality_testability_as_markdown text,
  quality_transferability_as_markdown text,
  quality_translatability_as_markdown text,
  quality_warrantability_as_markdown text,
  -- apache_echart
  apache_echart_as_url text CONSTRAINT initiative_apache_echart_as_url_check CHECK (apache_echart_as_url ~* '^https://'),
  apache_echart_as_typescript text,
  --- net_promoter_score
  net_promoter_score_customer_perspective_actual numeric(7,2),
  net_promoter_score_customer_perspective_expect numeric(7,2),
  net_promoter_score_customer_perspective_ratio numeric(7,2) GENERATED ALWAYS AS (net_promoter_score_customer_perspective_actual / net_promoter_score_customer_perspective_expect) STORED,
  net_promoter_score_customer_perspective_unit text,
  net_promoter_score_customer_perspective_description_as_markdown text,
  net_promoter_score_user_perspective_actual numeric(7,2),
  net_promoter_score_user_perspective_expect numeric(7,2),
  net_promoter_score_user_perspective_ratio numeric(7,2) GENERATED ALWAYS AS (net_promoter_score_user_perspective_actual / net_promoter_score_user_perspective_expect) STORED,
  net_promoter_score_user_perspective_unit text,
  net_promoter_score_user_perspective_description_as_markdown text,
  net_promoter_score_worker_perspective_actual numeric(7,2),
  net_promoter_score_worker_perspective_expect numeric(7,2),
  net_promoter_score_worker_perspective_ratio numeric(7,2) GENERATED ALWAYS AS (net_promoter_score_worker_perspective_actual / net_promoter_score_worker_perspective_expect) STORED,
  net_promoter_score_worker_perspective_unit text,
  net_promoter_score_worker_perspective_description_as_markdown text,
  --- active_users
  active_users_actual numeric(7,2),
  active_users_expect numeric(7,2),
  active_users_ratio numeric(7,2) GENERATED ALWAYS AS (active_users_actual / active_users_expect) STORED,
  active_users_unit text,
  active_users_description text,
  --- uptime_percentage
  uptime_percentage_actual numeric(7,5),
  uptime_percentage_expect numeric(7,5),
  uptime_percentage_ratio numeric(7,2) GENERATED ALWAYS AS (uptime_percentage_actual / uptime_percentage_expect) STORED,
  uptime_percentage_unit text,
  uptime_percentage_description text,
  --- burn_rate
  burn_rate_net_cash_per_week_actual numeric(7,2),
  burn_rate_net_cash_per_week_expect numeric(7,2),
  burn_rate_net_cash_per_week_ratio numeric(7,2) GENERATED ALWAYS AS (burn_rate_net_cash_per_week_actual / burn_rate_net_cash_per_week_expect) STORED,
  burn_rate_net_cash_per_week_unit text,
  burn_rate_net_cash_per_week_description text,
  burn_rate_net_hours_per_week_actual numeric(7,2),
  burn_rate_net_hours_per_week_expect numeric(7,2),
  burn_rate_net_hours_per_week_ratio numeric(7,2) GENERATED ALWAYS AS (burn_rate_net_hours_per_week_actual / burn_rate_net_hours_per_week_expect) STORED,
  burn_rate_net_hours_per_week_unit text,
  burn_rate_net_hours_per_week_description text,
  --- earned_value_management
  earned_value_management_planned_value numeric(7,2),
  earned_value_management_earned_value numeric(7,2),
  earned_value_management_actual_cost numeric(7,2),
  earned_value_management_cost_variance numeric(7,2) GENERATED ALWAYS AS (earned_value_management_earned_value - earned_value_management_actual_cost) STORED,
  earned_value_management_cost_variance_ratio numeric(7,2) GENERATED ALWAYS AS ((earned_value_management_earned_value - earned_value_management_actual_cost) / earned_value_management_earned_value) STORED,
  earned_value_management_cost_performance_index numeric(7,2) GENERATED ALWAYS AS (earned_value_management_earned_value / earned_value_management_actual_cost) STORED,
  earned_value_management_schedule_variance numeric(7,2) GENERATED ALWAYS AS (earned_value_management_earned_value - earned_value_management_planned_value) STORED,
  earned_value_management_schedule_variance_ratio numeric(7,2) GENERATED ALWAYS AS ((earned_value_management_earned_value - earned_value_management_planned_value) / earned_value_management_planned_value) STORED,
  earned_value_management_schedule_performance_index numeric(7,2) GENERATED ALWAYS AS (earned_value_management_earned_value / earned_value_management_planned_value) STORED,
  --- total_project_control
  total_project_control_dipp numeric(7,2),
  total_project_control_dipp_progress_index_ratio numeric(7,2) GENERATED ALWAYS AS (total_project_control_dipp_progress_index_numerator / total_project_control_dipp_progress_index_denominator) STORED,
  total_project_control_dipp_progress_index_numerator numeric(7,2),
  total_project_control_dipp_progress_index_denominator numeric(7,2),
  total_project_control_expected_monetary_value numeric(7,2),
  total_project_control_cost_estimate_to_complete numeric(7,2),
  --- deployment_frequency
  deployment_frequency_actual numeric(7,2),
  deployment_frequency_expect numeric(7,2),
  deployment_frequency_ratio numeric(7,2) GENERATED ALWAYS AS (deployment_frequency_actual / deployment_frequency_expect) STORED,
  deployment_frequency_unit text,
  deployment_frequency_description text,
  --- mean_lead_time_for_changes
  mean_lead_time_for_changes_actual numeric(7,2),
  mean_lead_time_for_changes_expect numeric(7,2),
  mean_lead_time_for_changes_ratio numeric(7,2) GENERATED ALWAYS AS (mean_lead_time_for_changes_actual / mean_lead_time_for_changes_expect) STORED,
  mean_lead_time_for_changes_unit text,
  mean_lead_time_for_changes_description text,
  --- change_failure_rate
  change_failure_rate_actual numeric(7,2),
  change_failure_rate_expect numeric(7,2),
  change_failure_rate_ratio numeric(7,2) GENERATED ALWAYS AS (change_failure_rate_actual / change_failure_rate_expect) STORED,
  change_failure_rate_unit text,
  change_failure_rate_description text,
  --- failed_deployment_recovery_time
  failed_deployment_recovery_time_actual numeric(7,2),
  failed_deployment_recovery_time_expect numeric(7,2),
  failed_deployment_recovery_time_ratio numeric(7,2) GENERATED ALWAYS AS (failed_deployment_recovery_time_actual / failed_deployment_recovery_time_expect) STORED,
  failed_deployment_recovery_time_unit text,
  failed_deployment_recovery_time_description text,
  --- maintainability_index
  maintainability_index_actual numeric(7,2),
  maintainability_index_expect numeric(7,2),
  maintainability_index_ratio numeric(7,2) GENERATED ALWAYS AS (maintainability_index_actual / maintainability_index_expect) STORED,
  maintainability_index_unit text,
  maintainability_index_description text,
  --- line_count
  line_count_actual numeric(7,2),
  line_count_expect numeric(7,2),
  line_count_ratio numeric(7,2) GENERATED ALWAYS AS (line_count_actual / line_count_expect) STORED,
  line_count_unit text,
  line_count_description text,
  --- test_automation_code_coverage
  test_automation_code_coverage_actual numeric(7,2),
  test_automation_code_coverage_expect numeric(7,2),
  test_automation_code_coverage_ratio numeric(7,2) GENERATED ALWAYS AS (test_automation_code_coverage_actual / test_automation_code_coverage_expect) STORED,
  test_automation_code_coverage_unit text,
  test_automation_code_coverage_description text,
  --- halstead_complexity_volume
  halstead_complexity_volume_actual numeric(7,2),
  halstead_complexity_volume_expect numeric(7,2),
  halstead_complexity_volume_ratio numeric(7,2) GENERATED ALWAYS AS (halstead_complexity_volume_actual / halstead_complexity_volume_expect) STORED,
  halstead_complexity_volume_unit text,
  halstead_complexity_volume_description text,
  --- halstead_complexity_difficulty
  halstead_complexity_difficulty_actual numeric(7,2),
  halstead_complexity_difficulty_expect numeric(7,2),
  halstead_complexity_difficulty_ratio numeric(7,2) GENERATED ALWAYS AS (halstead_complexity_difficulty_actual / halstead_complexity_difficulty_expect) STORED,
  halstead_complexity_difficulty_unit text,
  halstead_complexity_difficulty_description text,
  --- halstead_complexity_effort
  halstead_complexity_effort_actual numeric(7,2),
  halstead_complexity_effort_expect numeric(7,2),
  halstead_complexity_effort_ratio numeric(7,2) GENERATED ALWAYS AS (halstead_complexity_effort_actual / halstead_complexity_effort_expect) STORED,
  halstead_complexity_effort_unit text,
  halstead_complexity_effort_description text
);

CREATE TRIGGER trigger_initiative_updated_at
  BEFORE UPDATE ON initiative
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX initiative_index_gto
  ON initiative USING GIN ((
    sign
      || ' ' || name
      || ' ' || status
      || ' ' || tagging
      || ' ' || note
      || ' ' || ai_agent_instructions_as_markdown
      || ' ' || web
      || ' ' || email
      || ' ' || phone
      || ' ' || chat
      || ' ' || calendar
      || ' ' || postal
      || ' ' || rdf_type
      || ' ' || bluesky_as_url
      || ' ' || codeberg_as_url
      || ' ' || github_as_url
      || ' ' || instagram_as_url
      || ' ' || linkedin_as_url
      || ' ' || mastodon_as_url
      || ' ' || orcid_as_url
      || ' ' || tiktok_as_url
      || ' ' || wikipedia_as_url
      || ' ' || youtube_as_url
      || ' ' || swot_strengths_as_markdown
      || ' ' || swot_weaknesses_as_markdown
      || ' ' || swot_opportunities_as_markdown
      || ' ' || swot_threats_as_markdown
      || ' ' || rice_reach_as_markdown
      || ' ' || rice_impact_as_markdown
      || ' ' || rice_confidence_as_markdown
      || ' ' || rice_effort_as_markdown
      || ' ' || raid_risks_as_markdown
      || ' ' || raid_assumptions_as_markdown
      || ' ' || raid_issues_as_markdown
      || ' ' || raid_dependencies_as_markdown
      || ' ' || rope_realistic_as_markdown
      || ' ' || rope_optimistic_as_markdown
      || ' ' || rope_pessimistic_as_markdown
      || ' ' || rope_equilibristic_as_markdown
      || ' ' || sipoc_suppliers_as_markdown
      || ' ' || sipoc_inputs_as_markdown
      || ' ' || sipoc_processes_as_markdown
      || ' ' || sipoc_outputs_as_markdown
      || ' ' || sipoc_customers_as_markdown
      || ' ' || steeple_social_as_markdown
      || ' ' || steeple_technological_as_markdown
      || ' ' || steeple_economic_as_markdown
      || ' ' || steeple_environmental_as_markdown
      || ' ' || steeple_political_as_markdown
      || ' ' || steeple_legal_as_markdown
      || ' ' || steeple_ethical_as_markdown
      || ' ' || porters_five_forces_entrants_as_markdown
      || ' ' || porters_five_forces_substitutes_as_markdown
      || ' ' || porters_five_forces_customers_as_markdown
      || ' ' || porters_five_forces_suppliers_as_markdown
      || ' ' || porters_five_forces_competitors_as_markdown
      || ' ' || invest_independent_as_markdown
      || ' ' || invest_negotiable_as_markdown
      || ' ' || invest_valuable_as_markdown
      || ' ' || invest_estimable_as_markdown
      || ' ' || invest_small_as_markdown
      || ' ' || invest_testable_as_markdown
      || ' ' || code_of_conduct_policy_as_markdown
      || ' ' || coordinated_disclosure_policy_as_markdown
      || ' ' || copyright_policy_as_markdown
      || ' ' || corrections_policy_as_markdown
      || ' ' || diversity_policy_as_markdown
      || ' ' || equal_opportunity_policy_as_markdown
      || ' ' || ethics_policy_as_markdown
      || ' ' || legal_policy_as_markdown
      || ' ' || license_policy_as_markdown
      || ' ' || open_source_policy_as_markdown
      || ' ' || privacy_policy_as_markdown
      || ' ' || safety_policy_as_markdown
      || ' ' || security_policy_as_markdown
      || ' ' || socials_policy_as_markdown
      || ' ' || staff_policy_as_markdown
      || ' ' || arc42_01_introduction_and_goals_as_markdown
      || ' ' || arc42_02_constraints_as_markdown
      || ' ' || arc42_03_context_and_scope_as_markdown
      || ' ' || arc42_04_solution_strategy_as_markdown
      || ' ' || arc42_05_building_block_view_as_markdown
      || ' ' || arc42_06_runtime_view_as_markdown
      || ' ' || arc42_07_deployment_view_as_markdown
      || ' ' || arc42_08_crosscutting_concepts_as_markdown
      || ' ' || arc42_09_architectural_decisions_as_markdown
      || ' ' || arc42_10_quality_requirements_as_markdown
      || ' ' || arc42_11_risks_and_technical_debt_as_markdown
      || ' ' || arc42_12_glossary_as_markdown
      || ' ' || explain_stakeholders_as_markdown
      || ' ' || explain_history_as_markdown
      || ' ' || explain_authentication_as_markdown
      || ' ' || explain_authorization_as_markdown
      || ' ' || explain_use_cases_as_markdown
      || ' ' || explain_demographics_as_markdown
      || ' ' || explain_ui_as_markdown
      || ' ' || explain_api_as_markdown
      || ' ' || explain_data_as_markdown
      || ' ' || explain_mobile_as_markdown
      || ' ' || explain_legal_as_markdown
      || ' ' || explain_financial_as_markdown
      || ' ' || explain_service_level_agreement_as_markdown
      || ' ' || explain_disaster_recovery_as_markdown
      || ' ' || quality_availability_as_markdown
      || ' ' || quality_certifiability_as_markdown
      || ' ' || quality_compatibility_as_markdown
      || ' ' || quality_efficiency_as_markdown
      || ' ' || quality_governability_as_markdown
      || ' ' || quality_maintainability_as_markdown
      || ' ' || quality_observability_as_markdown
      || ' ' || quality_operability_as_markdown
      || ' ' || quality_recoverability_as_markdown
      || ' ' || quality_scalability_as_markdown
      || ' ' || quality_security_as_markdown
      || ' ' || quality_suitability_as_markdown
      || ' ' || quality_testability_as_markdown
      || ' ' || quality_transferability_as_markdown
      || ' ' || quality_translatability_as_markdown
      || ' ' || quality_warrantability_as_markdown
) gin_trgm_ops);

CREATE INDEX initiative_created_at_index ON initiative (created_at);
CREATE INDEX initiative_updated_at_index ON initiative (updated_at);
CREATE INDEX initiative_retired_at_index ON initiative (retired_at);
CREATE INDEX initiative_locale_code_index ON initiative (locale_code);
CREATE INDEX initiative_name_index ON initiative (name);
CREATE INDEX initiative_name_index_tpo ON initiative (name text_pattern_ops);
CREATE INDEX initiative_tagging_index ON initiative (tagging);
CREATE INDEX initiative_tagging_index_tpo ON initiative (tagging text_pattern_ops);
CREATE INDEX initiative_location_iso_3166_1_alpha_2_index on initiative (location_iso_3166_1_alpha_2 );
CREATE INDEX initiative_location_iso_3166_2_index on initiative (location_iso_3166_2);
CREATE INDEX initiative_location_postal_code_index on initiative (location_postal_code);
CREATE INDEX initiative_location_latitude_as_decimal_degrees_index on initiative (location_latitude_as_decimal_degrees);
CREATE INDEX initiative_location_longitude_as_decimal_degrees_index on initiative (location_longitude_as_decimal_degrees);
CREATE INDEX initiative_gs1_digital_link_index ON initiative (gs1_digital_link);
CREATE INDEX initiative_gs1_country_code_index ON initiative (gs1_country_code);
CREATE INDEX initiative_gs1_global_location_number_index ON initiative (gs1_global_location_number);
CREATE INDEX initiative_isic_v4_code_index ON initiative (isic_v4_code);
