
defmodule MyApp.MyDomain.QueueMetricKit.Attributes do
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

    attribute :type, :text do
      description "
Queue types and service types describe how the queue chooses which items to process.

* Priority: serve customers based on their priority level; these levels could be based on status, urgency, payment, etc.

* Timeshare: serve everyone at the same time; service capacity is distributed evenly among everyone waiting.

* First In First Out (FIFO): serve the customer who has been waiting for the longest time.

* Last In First Out (LIFO): serve the customer who has been waiting for the shortest time.

* Shortest Job First (SJF): serve the customer who needs the smallest amount of service.

* Longest Job First (LJF): serve the customer who needs the largest amount of service."
    end

    attribute :queue_arrival_rate_actual, :numeric do
      description "
λ: arrival rate. This measures how fast new items are coming into the queue.

Examples:

* λ = μ means the arrival rate equals the service rate; the queue is staying the same size, other than dropouts.

* λ > μ means the arrival rate is greater than the service rate; the queue is getting larger, other than dropouts.

* λ < μ means the arrival rate is less than the service rate; the queue is getting smaller, other than dropouts."
    end

    attribute :queue_arrival_rate_target, :numeric do
    end

    attribute :queue_arrival_rate_ratio, :numeric do
    end

    attribute :queue_service_rate_actual, :numeric do
      description "
μ: service rate. This measures how fast items in the queue are being handled."
    end

    attribute :queue_service_rate_target, :numeric do
    end

    attribute :queue_service_rate_ratio, :numeric do
    end

    attribute :queue_dropout_rate_actual, :numeric do
      description "
σ: dropout rate. This measures how fast items are skipping out the queue unhandled.

Examples:

* Balking: when a customer decides not to start waiting for service because the wait time threatens to be too long.

* Reneging: when a customer who has waited already decides to leave because they’ve wasted too much time.

* Jockeying: when a customer switches between queues in a tandem queue system, trying to get a shorter wait."
    end

    attribute :queue_dropout_rate_target, :numeric do
    end

    attribute :queue_dropout_rate_ratio, :numeric do
    end

    attribute :queue_utilization_ratio_actual, :numeric do
      description "
ρ: utilization ratio = λ / μ

This is the most important notation that summarizes a queue.

Examples:

  * ρ = 1 means the arrival rate is equal to the service rate; the queue is staying the same size.

  * ρ > 1 means the arrival rate is greater than the service rate; the queue is getting larger.

  * ρ < 1 means the arrival rate is less than the service rate; the queue is getting smaller."
    end

    attribute :queue_utilization_ratio_actual, :numeric do
    end

    attribute :queue_utilization_ratio_ratio, :numeric do
    end

    attribute :queue_error_ratio_actual, :numeric do
      description "
ε: error ratio = service failure count / service total count

This is the most important notation that summarizes a queue's success.

Examples:

* ε = 0 means no errors.

* ε = 0.1 means 10% of services have an error.

* ε = 1 means every service has an error."
    end

    attribute :queue_error_ratio_target, :numeric do
    end

    attribute :queue_error_ratio_ratio, :numeric do
    end

    attribute :queue_lead_time_actual, :numeric do
      description "
τ: lead time = from arrival to finish

Example:

* τ = 5s means an item is added to the queue, then serviced 5 seconds later."
    end

    attribute :queue_lead_time_target, :numeric do
    end

    attribute :queue_lead_time_ratio, :numeric do
    end

    attribute :queue_wait_time_actual, :numeric do
      description "
ω: wait time = from arrival to start of work

Example:

* ω = 4s means an item waits in the queue for 4 seconds, then work starts."
    end

    attribute :queue_wait_time_target, :numeric do
    end

    attribute :queue_wait_time_ratio, :numeric do
    end

    attribute :queue_work_time_actual, :numeric do
      description "
φ: work time = from start of work to finish

Example:

* φ = 1s means an item takes 1 second of work, then is complete."
    end

    attribute :queue_work_time_target, :numeric do
    end

    attribute :queue_work_time_ratio, :numeric do
      description "Deployment frequency ratio = (actual / target)"
    end

    attribute :queue_step_time_actual, :numeric do
      description "
θ: step time = from finish to next finish

Example:

* θ = 1s means there's 1 second between one completion and the next completion."
    end

    attribute :queue_step_time_target, :numeric do
    end

    attribute :queue_step_time_ratio, :numeric do
      description "Deployment frequency ratio = (actual / target)"
    end

    attribute :queue_item_count, :count do
      description "
n: the number of items in the system."
    end

    attribute :queue_service_error_count, :count do
      description "
TODO"
    end

    attribute :queue_arrival_process_probability_distribution_count, :text do
      description "
A: the arrival process probability distribution."
    end

    attribute :queue_service_process_probability_distribution_count, :text do
      description "
B: the service process probability distribution."
    end

    attribute :queue_server_count, :count do
      description "
C: the number of servers."
    end

    attribute :queue_maximum_active_items_count, :count do
      description "
D: the maximum number of items allowed in the queue at any given time, waiting or being served (without getting bumped)."
    end

    attribute :queue_maximum_total_items_count, :count do
      description "
E: the maximum number of items total."
    end

  end
end
