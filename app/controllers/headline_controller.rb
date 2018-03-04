class HeadlineController < ApplicationController
  def scraping
    #更新日時
    weekdays = %w(日 月 火 水 木 金 土)
    t = Time.now
    wd = t.strftime("#{weekdays[t.wday]}")
    @time = t.strftime("%Y年%m月%d日(#{wd}) %H時%M分%S秒")

    agent = Mechanize.new

    #天気予報
    page = agent.get('https://tenki.jp/forecast/7/')
    @tenki_link = page.search('#forecast-map-entry-32201')
    @tenki_date = page.search('#forecast-public-date').text

    @tenki_img = page.search('#forecast-map-entry-32201 img').attribute("src")

    #Yahoo! JAPAN IT
    page = agent.get('https://news.yahoo.co.jp/list/?c=computer')
    @yahoo_link = page.search('.ListBoxwrap a')

    #はてなブックマーク - テクノロジー
    page = agent.get('http://b.hatena.ne.jp/ctop/it')
    @hatena_link = page.search('.hb-entry-link-container a')

    #日経 xTECH ランキング：総合
    page = agent.get('http://tech.nikkeibp.co.jp/ranking/')
    @tech_link = page.search('.list_rank h3 a')
  end

  def update
    redirect_to :action => 'scraping'
  end
end
