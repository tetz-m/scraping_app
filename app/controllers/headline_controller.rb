class HeadlineController < ApplicationController
  #更新日時取得
  def update
    weekdays = %w(日 月 火 水 木 金 土)
    t = Time.now
    wd = t.strftime("#{weekdays[t.wday]}")
    @update_time = t.strftime("%Y年%m月%d日(#{wd}) %H時%M分%S秒")
  end

  #スクレイピング処理
  def scraping
    mech = Mechanize.new

    #ITmedia PC USER
    page = mech.get('http://www.itmedia.co.jp/pcuser/subtop/ranking/')
    @itmedia_link = page.search('.colBoxTitle a')

    #はてなブックマーク - テクノロジー
    page = mech.get('http://b.hatena.ne.jp/ctop/it')
    @hatena_link = page.search('.hb-entry-link-container a')

    #lifehacker - ソフトウェア
    page = mech.get('https://www.lifehacker.jp/tags/web/cat4/')
    @lifehacker_link = page.search('.lh-block-column--1 a')

    #日経 xTECH
    page = mech.get('http://tech.nikkeibp.co.jp/ranking/')
    @tech_link = page.search('.list_rank h3 a')

    #Yahoo! JAPAN IT
    page = mech.get('https://news.yahoo.co.jp/list/?c=computer')
    @yahoo_link = page.search('.ListBoxwrap a')

    #更新日時取得
    update
  end
end
