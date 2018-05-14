# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

alias DataStore.Repo
alias DataStore.Article

Article.changeset(%Article{}, %{body: "some body", title: "some title"}) |> DataStore.Repo.insert!()