defmodule ##{args.app_name_title_case}.#{args.ddd_name_title_case}.#{entity.title_case}.Actions do
          use Spark.Dsl.Fragment, of: Ash.Resource

          actions do
            defaults [read: :*, destroy: :*, create: :*, update: :*]
          end
        end