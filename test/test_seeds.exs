# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

alias DataStore.Repo
alias DataStore.Article
alias DataStore.Tag
alias DataStore.TagRelation

Repo.insert!(Article.changeset(%Article{}, Stub.Article.get_insert_attrs()))
Repo.insert!(Tag.changeset(%Tag{}, Stub.Tag.get_insert_attrs()))
Repo.insert!(TagRelation.changeset(%TagRelation{}, Stub.TagRelation.get_insert_attrs()))
Repo.insert!(TagRelation.changeset(%TagRelation{}, Stub.TagRelation.get_insert_attrs()))
