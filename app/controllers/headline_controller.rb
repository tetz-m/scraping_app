class HeadlineController < ApplicationController
  #スクレイピング処理
  def scraping
    mech = Mechanize.new

    #ITmedia PC USER - アクセスランキング
    page = mech.get("http://www.itmedia.co.jp/pcuser/subtop/ranking/")
    @itmedia = page.search(".colBoxTitle a")

    #はてなブックマーク - テクノロジー
    page = mech.get("http://b.hatena.ne.jp/hotentry/it")
    @hatena = page.search(".entrylist-contents-title a")

    #TechCrunch Japan - 人気
    page = mech.get("http://jp.techcrunch.com/popular/")
    @tech = page.search(".trending-container a")

    #Yahoo! JAPAN - IT
    page = mech.get("https://news.yahoo.co.jp/list/?c=computer")
    @yahoo = page.search(".ListBoxwrap a")

    #Gigazine - ソフトウェア
    page = mech.get("https://gigazine.net/news/C4/")
    @gigazine = page.search(".card h2 a")

    #更新日時取得
    update
  end

  #更新日時取得
  def update
    weekdays = %w(日 月 火 水 木 金 土)
    t = Time.now
    wd = t.strftime("#{weekdays[t.wday]}")
    @update_time = t.strftime("%Y年%m月%d日(#{wd}) %H時%M分%S秒")
  end

  #aboutページ
  def about
    update
    render "shared/_about.html.erb"
  end
end
