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
       },
       author: %{
         index: Handler.Authors.IndexHandler,
         show: Handler.Authors.ShowHandler,
       }
