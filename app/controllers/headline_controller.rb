class HeadlineController < ApplicationController
  #スクレイピング処理
  def scraping
    mech = Mechanize.new

    #ITmedia PC USER
    page = mech.get("http://www.itmedia.co.jp/pcuser/subtop/ranking/")
    @itmedia = page.search(".colBoxTitle a")

    #はてなブックマーク - テクノロジー
    page = mech.get("http://b.hatena.ne.jp/hotentry/it?of=9")
    @hatena = page.search(".hb-entry-link-container a")

    #TechCrunch Japan
    page = mech.get("http://jp.techcrunch.com/popular/")
    @tech = page.search(".trending-container a")

    #Yahoo! JAPAN IT
    page = mech.get("https://news.yahoo.co.jp/list/?c=computer")
    @yahoo = page.search(".ListBoxwrap a")

    #朝日新聞デジタル 島根
    page = mech.get("http://www.asahi.com/area/shimane/list.html")
    @asahi = page.search(".List a")

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
