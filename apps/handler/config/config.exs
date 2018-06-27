# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :handler,
       article: %{
         index: Handler.Articles.IndexHandler,
         show: Handler.Articles.ShowHandler,
         create: Handler.Articles.CreateHandler,
         update: Handler.Articles.UpdateHandler,
         delete: Handler.Articles.DeleteHandler,
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
         create: Handler.Authors.CreateHandler,
         update: Handler.Authors.UpdateHandler,
         delete: Handler.Authors.DeleteHandler,
       }
