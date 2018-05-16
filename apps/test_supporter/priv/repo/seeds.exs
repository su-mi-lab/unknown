# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

alias DataStore.Repo

alias DataStore.Article
alias TestSupporter.Dummy.ArticleDummy
Repo.insert!(Article.changeset(%Article{}, ArticleDummy.valid_article()))
Repo.insert!(Article.changeset(%Article{}, ArticleDummy.valid_article(2)))
Repo.insert!(Article.changeset(%Article{}, ArticleDummy.valid_article(3)))

alias DataStore.Tag
alias TestSupporter.Dummy.TagDummy
Repo.insert!(Tag.changeset(%Tag{}, TagDummy.valid_tag(1)))
Repo.insert!(Tag.changeset(%Tag{}, TagDummy.valid_tag(2)))

alias DataStore.TagRelation
alias TestSupporter.Dummy.TagRelationDummy
Repo.insert!(TagRelation.changeset(%TagRelation{}, TagRelationDummy.valid_tag_relation(1, 1, 1)))
Repo.insert!(TagRelation.changeset(%TagRelation{}, TagRelationDummy.valid_tag_relation(1, 2, 2)))
