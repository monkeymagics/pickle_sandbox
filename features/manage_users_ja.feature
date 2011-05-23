# -*- encoding: utf-8 -*-
#language:ja

@users_ja
機能: ユーザを管理する
  ユーザを管理する為に
  システム管理者
  がユーザのCRUDを行いたい
  
#   Scenario: Register new user
#     Given I am on the new user page
#     When I fill in "Name" with "name 1"
#     And I press "Create"
#     Then I should see "name 1"

#   Scenario: Delete user
#     Given the following users:
#       |name|
#       |name 1|
#       |name 2|
#       |name 3|
#       |name 4|
#     When I delete the 3rd user
#     Then I should see the following users:
#       |Name|
#       |name 1|
#       |name 2|
#       |name 4|

  シナリオ: ユーザを確認する
    前提 次の管理者が存在する 名前: "akm"
    もし "パス/admin/users"ページを表示する
    ならば "akm"と表示されていること
