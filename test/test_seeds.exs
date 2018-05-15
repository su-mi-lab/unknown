# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

alias DataStore.Repo
alias DataStore.Article

Article.changeset(%Article{}, Stub.Article.get_insert_attrs()) |> Repo.insert!()