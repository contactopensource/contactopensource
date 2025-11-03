defmodule MyApp.MyDomain.ContentAudio.Actions do
          use Spark.Dsl.Fragment, of: Ash.Resource

          actions do
            defaults [read: :*, destroy: :*, create: :*, update: :*]
          end
        end