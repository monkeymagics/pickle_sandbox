# -*- encoding: utf-8 -*-
#language:ja

@users_ja
機能: ユーザを管理する
  ユーザを管理する為に
  システム管理者
  がユーザのCRUDを行いたい
  
  シナリオ: ユーザを登録する
    前提 ロケールを"ja"に設定する
    かつ "the new user page"ページを表示している
    もし "名前"に"totty"と入力する
    かつ "登録する"ボタンをクリックする
    ならば "totty"と表示されていること

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
