# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :handler,
       article: %{
         show: Handler.Articles.ShowHandler,
       },
       tag: %{
         index: Handler.Tags.IndexHandler,
         show: Handler.Tags.ShowHandler,
         create: Handler.Tags.CreateHandler,
         update: Handler.Tags.UpdateHandler,
         delete: Handler.Tags.DeleteHandler,
       },
       author: %{
         index: Handler.Authors.IndexHandler,
         show: Handler.Authors.ShowHandler,
       }
