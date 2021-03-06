# アプリケーション名
SALON APP

# アプリケーション概要
管理者は自身でサイトの更新ができ、閲覧者はサイトから情報の確認や予約ができる。

# URL
https://salon-app-37743.herokuapp.com/

# テスト用アカウント
<Basic認証><br>
ユーザー名: daigo<br>
パスワード: 37743<br>
<管理者><br>
email: admin@test.com<br>
password: admin11<br>
<一般ユーザー><br>
email: test@test.com<br>
password: 111111

# 利用方法
## 一般ユーザーの操作
1. スタッフ確認（一覧・詳細）
2. ユーザー管理（新規登録・マイページ・編集）
3. ヘアースタイル確認（一覧・詳細）
4. 予約管理（新規登録・詳細・編集・削除）
5. ニュース確認（一覧・詳細）
6. コメント管理（新規投稿・編集・削除）
7. 商品確認（一覧・詳細）

## 管理者の操作
1. スタッフ管理（新規登録・編集・削除）
2. ユーザー管理（編集）
3. ヘアースタイル管理（新規登録・編集・削除）
4. 予約管理（編集・削除）
5. ニュース管理（新規登録・編集・削除）
6. コメント管理（編集・削除）
7. 商品管理（新規登録・編集・削除）

`一般ユーザーができる操作は基本的に管理者もできます。`

# アプリケーションを作成した背景
自身の弟が美容師であり、将来自身の作成したサイトを利用してほしいと考えたため。また、管理者には、簡単な操作で自身のサイトを運営・管理してほしいと考えたため。

# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1n45_3zeO5tWZxsh5DOBQBWJfpO0x2fR3IhFojm1Klmk/edit#gid=982722306)


# 実装した機能についての画像やGIFおよびそ説明
## ユーザー管理
[![Image from Gyazo](https://i.gyazo.com/0a3c2b746a56b1f742f32739e9450565.png)](https://gyazo.com/0a3c2b746a56b1f742f32739e9450565)
**マイページ**：<br>登録したユーザーの詳細を確認できる。Editボタンを押せば、編集もでき、マイページに遷移できるのはユーザー本人と管理者のみ。

## スタッフ管理
[![Image from Gyazo](https://i.gyazo.com/01c37fedf50b3c709a90fd27e2e03ea9.jpg)](https://gyazo.com/01c37fedf50b3c709a90fd27e2e03ea9)
**スタッフ一覧**：<br>
登録したスタッフの一覧を確認できる。管理者のみ新規登録ボタンが表示される。また、画像をクリックすることで詳細ページ遷移可能。

[![Image from Gyazo](https://i.gyazo.com/b3e8892818cec6733687802b80a75f32.jpg)](https://gyazo.com/b3e8892818cec6733687802b80a75f32)
**スタッフ詳細**：<br>
一覧で選択したスタッフの詳細を確認できる。管理者のみ編集・削除ボタンが表示される。

## ヘアースタイル管理
[![Image from Gyazo](https://i.gyazo.com/9bfb9488fc5cc39448fa059a931ec7d6.jpg)](https://gyazo.com/9bfb9488fc5cc39448fa059a931ec7d6)
**ヘアースタイル一覧**：<br>
登録したヘアースタイルの一覧を確認できる。登録の際の選択により、メンズとレディースの表示が分けられる。

[![Image from Gyazo](https://i.gyazo.com/1b7f42fd3ab9a6626a54d0eb66bbac34.jpg)](https://gyazo.com/1b7f42fd3ab9a6626a54d0eb66bbac34)
**ヘアースタイル詳細**：<br>
一覧ページ・メインページで選択したヘアースタイルの詳細を確認できる。登録時にFRONT・SIDE・BACKの画像を登録することで３方向から確認できる。

## 予約管理
[![Image from Gyazo](https://i.gyazo.com/7040e3b5f00865a0f50977a9478afcd0.png)](https://gyazo.com/7040e3b5f00865a0f50977a9478afcd0)
**予約一覧**: <br>
予約の空き状況を確認できる。翌日から３ヶ月先までの予約をすることができる。

## ニュース管理
[![Image from Gyazo](https://i.gyazo.com/25f168aca37a21f6de0ca950add310c5.png)](https://gyazo.com/25f168aca37a21f6de0ca950add310c5)
**ニュース一覧**: <br>
登録したニュースを一覧で確認できる。ページネーション機能で最大5件のニュースが表示される。

# 実装予定の機能
## 一般ユーザー
4. 予約管理（編集・削除）
6. コメント管理（新規投稿・編集・削除）
7. 商品確認（一覧・詳細）

## 管理者
4. 予約管理（編集・削除）
5. 店舗情報管理（削除）
6. コメント管理（編集・削除）
7. 商品管理（新規登録・編集・削除）

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/51dd14190aeb574c987fdaf6d4d31144.png)](https://gyazo.com/51dd14190aeb574c987fdaf6d4d31144)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/3c9905e46346da357887cd8abab5f0ad.png)](https://gyazo.com/3c9905e46346da357887cd8abab5f0ad)

# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br>
・テスト<br>
・テキストエディタ<br>
・タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/prodaigo/salon_app.git<br>
% cd prodaigo/salon_app.git<br>
% bundle install<br>
% yarn install

# 工夫したポイント
## わかりやすいデザイン
誰が使っても一眼で操作がわかるようなデザインにしました。ヘッダーとフッターはどのページにも配置し、いつでも各機能のメインページに行けるようにしました。また、白と黒をメインカラーとし、おしゃれな雰囲気を演出しています。

## SNS認証
ユーザーの新規登録・ログインの際にSNS認証を行えるようにしました。SNS認証を行えることで登録の手間を少しでも減らせるようにしています。

## 画像の複数枚登録
ヘアースタイルの新規登録の際に画像を複数枚登録できるようにしました。この機能により詳細ページで3面の画像を確認でき、よりイメージを膨らませることができます。