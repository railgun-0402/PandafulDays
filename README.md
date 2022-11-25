# Pandaful days
パン屋の検索サイトです。<br />
東京都の山手線沿いのパン屋を検索することができます。<br />
検索条件は駅名、店名、パンのジャンルから選ぶことができ自分の求めている条件に合致するお店を探せます。<br />
また例として駅名のみで検索した際にも名前順、評価順、コメント順、Myshop順とソート機能をついているので<br />
人気店や他のユーザーの評価、おすすめ商品等を確認することができます。<br />

## 対象ユーザー
日常からパンを買う人、山手線沿いの会社員<br />
SNS等で情報共有してくれる若者<br />

## 開発環境
- ruby '2.5.7'<br />
- rails　’5.2.4.3'<br />
- Gem<br />
   -refile<br />
   -refile-mini_magick<br />
   -bootstrap 4.3.1<br />
   -jquery-rails<br />
   -paranoia<br />
   -kaminari<br />
   -devise<br />
   -pry-byebug<br />
   -geocoder<br />
   -impressionist 1.6.1<br />
   -dotenv-rails<br />
     group :production do
   -mysql2<br />

## 実装機能
- 会員側（user)<br />
1. 新規登録・ログイン機能<br />
2. user編集機能<br />
3. 退会機能<br />
4. 検索機能（複数条件）<br />
5. ソート機能<br />
6. コメント機能<br />
7. Myshop機能<br />
8. おすすめ機能（管理者側への連絡）<br />

- 管理者側(admin)<br />
1. 店舗一覧・編集・新規登録機能<br />
2. 会員一覧・編集・詳細情報表示機能<br />
3. 駅一覧・編集・新規登録機能<br />
4. ジャンル一覧・編集・新規登録機能<br />
5. ユーザーおすすめ店一覧・編集・登録機能<br />
6. ユーザー集計機能（1日の集計）<br />

- テスト(Rspec)<br />
1. modelのvalidates・アソシエーション<br />

## ドメイン
http://pandafuldays.xyz/

##作者
 泰山恭輔
