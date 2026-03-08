
defmodule MyApp.MyDomain.DoubleDiamond.Attributes do
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

    attribute :phase_1_title, :text do
      description "Phase 1 title"
    end

    attribute :phase_1_smart, :smart do
      description "Explain specific, measurable, actionable, relatable, timely."
    end

    attribute :phase_1_resolve_wall_time, :duration do
      description "Phase 1 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_1_resolve_work_time, :duration do
      description "Phase 1 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_1_reliability_unit_interval, :numeric do
      description "Phase 1 reliability unit interval"
    end

    attribute :phase_2_title, :text do
      description "Phase 2 title"
    end

    attribute :phase_2_smart, :smart do
      description "Explain specific, measurable, actionable, relatable, timely."
    end

    attribute :phase_2_wall_time, :duration do
      description "Phase 2 wall time"
    end

    attribute :phase_2_work_time, :duration do
      description "Phase 2 work time"
    end

    attribute :phase_2_total_count, :count do
      description "Phase 2 total count"
    end

    attribute :phase_2_error_count, :count do
      description "Phase 2 error count"
    end

    attribute :phase_2_resolve_wall_time, :duration do
      description "Phase 2 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_2_resolve_work_time, :duration do
      description "Phase 2 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_2_reliability_unit_interval, :numeric do
      description "Phase 2 reliability unit interval"
    end

    attribute :phase_3_title, :text do
      description "Phase 3 title"
    end

    attribute :phase_3_smart, :smart do
      description "Explain specific, measurable, actionable, relatable, timely."
    end

    attribute :phase_3_wall_time, :duration do
      description "Phase 3 wall time"
    end

    attribute :phase_3_work_time, :duration do
      description "Phase 3 work time"
    end

    attribute :phase_3_total_count, :count do
      description "Phase 3 total count"
    end

    attribute :phase_3_error_count, :count do
      description "Phase 3 error count"
    end

    attribute :phase_3_resolve_wall_time, :duration do
      description "Phase 3 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_3_resolve_work_time, :duration do
      description "Phase 3 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_3_reliability_unit_interval, :numeric do
      description "Phase 3 reliability unit interval"
    end

    attribute :phase_4_title, :text do
      description "Phase 4 title"
    end

    attribute :phase_4_smart, :smart do
      description "Explain specific, measurable, actionable, relatable, timely."
    end

    attribute :phase_4_wall_time, :duration do
      description "Phase 4 wall time"
    end

    attribute :phase_4_work_time, :duration do
      description "Phase 4 work time"
    end

    attribute :phase_4_total_count, :count do
      description "Phase 4 total count"
    end

    attribute :phase_4_error_count, :count do
      description "Phase 4 error count"
    end

    attribute :phase_4_resolve_wall_time, :duration do
      description "Phase 4 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_4_resolve_work_time, :duration do
      description "Phase 4 resolve wall time. A.k.a. mean time to resolve (MTTR), which is >= mean time to recover wall time."
    end

    attribute :phase_4_reliability_unit_interval, :numeric do
      description "Phase 4 reliability unit interval"
    end

  end
end
