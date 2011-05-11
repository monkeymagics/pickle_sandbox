# -*- encoding: utf-8 -*-
#language:ja

@focus
機能: 商品を表示する
  ただしい商品を買うために
  顧客
  が商品をブラウズして詳細な情報を見たい

  シナリオ: 商品を表示する
    前提 次のproductが存在する name: "Milk", price: "2.99"
    もし "the show page for that product"ページを表示する
    ならば "h1"に"Milk"と表示されていること
    かつ "2.99"と表示されていること

  シナリオ: 商品一覧を表示する
    前提 以下の商品が存在する
      | name   | price |
      | Milk   | 2.99  |
      | Puzzle | 8.99  |
    もし パス"/products" を開く
    ならば 以下の商品テーブルが表示されること
      | Milk   | $2.99  |
      | Puzzle | $8.99  |
    かつ そのページを見せてください
