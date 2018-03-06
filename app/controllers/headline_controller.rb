class HeadlineController < ApplicationController
  def update
    weekdays = %w(日 月 火 水 木 金 土)
    t = Time.now
    wd = t.strftime("#{weekdays[t.wday]}")
    @update_time = t.strftime("%Y年%m月%d日(#{wd}) %H時%M分%S秒")
  end

  def scraping
    mech = Mechanize.new

    #ITmedia NEWS アクセスランキング
    page = mech.get('http://www.itmedia.co.jp/news/subtop/ranking/')
    @itmedia_link = page.search('.colBoxTitle a')

    #Yahoo! JAPAN IT
    page = mech.get('https://news.yahoo.co.jp/list/?c=computer')
    @yahoo_link = page.search('.ListBoxwrap a')

    #はてなブックマーク - テクノロジー
    page = mech.get('http://b.hatena.ne.jp/ctop/it')
    @hatena_link = page.search('.hb-entry-link-container a')

    #日経 xTECH ランキング：総合
    page = mech.get('http://tech.nikkeibp.co.jp/ranking/')
    @tech_link = page.search('.list_rank h3 a')

    update
  end
end
