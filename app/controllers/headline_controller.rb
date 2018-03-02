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
  end
end
