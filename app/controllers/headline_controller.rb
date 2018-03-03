class HeadlineController < ApplicationController
  def scraping
    agent = Mechanize.new

    #Yahoo! JAPAN IT
    page = agent.get('https://news.yahoo.co.jp/list/?c=computer')
    @yahoo_link = page.search('.ListBoxwrap a')

    #はてなブックマーク - テクノロジー
    page = agent.get('http://b.hatena.ne.jp/ctop/it')
    @hatena_link = page.search('.hb-entry-link-container a')

    #日経 xTECH ランキング：総合
    page = agent.get('http://tech.nikkeibp.co.jp/ranking/')
    @tech_link = page.search('.list_rank h3 a')

    #更新日時の取得
    weekdays = %w(日 月 火 水 木 金 土)
    t = Time.now
    wd = t.strftime("#{weekdays[t.wday]}")
    @time = t.strftime("%Y年%m月%d日(#{wd}) %H時%M分%S秒")
  end
end
