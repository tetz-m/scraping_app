# scraping_app
ニュース記事の一覧を手軽に閲覧するためのRailsアプリです。

## 概要
Webスクレイピング（Webページの情報を抽出して加工することができる技術）を利用して複数のサイトのニュース記事を効率よく手軽に閲覧するために作成したアプリです。
サンプルは下記のリンクから確認できます。

## 説明
- TOPページに簡潔に表示されるので閲覧しやすいです。また、複数のサイトを訪問する手間が省けます。  
- レスポンシブウェブデザインに対応しているため、PC、タブレット、スマートフォンでも閲覧可能です。
- カスタマイズによって、自分好みの情報を抽出して表示できます。

## サンプル
Scrapp : https://scr-app.herokuapp.com/

## 改善点
- サンプルのため、うまく情報を抽出できないサイトがあります。XPathなどによる抽出方法もあるため検討が必要です。
- 登録画面（抽出するサイトを登録する画面）は作ってないため、必要であれば作る必要があります。  
- 登録するサイトや記事が多くなると画面描画に時間がかかるため、速度改善が必要です。

## 依存関係
- Ruby 2.4.3

- Rails 5.1.5

- [Mechanize](https://github.com/sparklemotion/mechanize)

- [Bootstrap 4](https://getbootstrap.com/)

## 使用方法
- Mechanizeをbundle installしてください。

## 著者
tetz-m

## ライセンス
[MIT](https://opensource.org/licenses/mit-license.php)
