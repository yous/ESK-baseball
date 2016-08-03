#!/usr/bin/env ruby
require 'mechanize'

URL = 'http://sports.news.naver.com/kbaseball/record/index.nhn'
a = Mechanize.new

a.get(URL) do |page|
  page.search('//tbody[@id="regularTeamRecordList_table"]/tr').each do |tr|
    rank = tr.at('th').text
    team = tr.at('td[@class="tm"]').text.strip
    record = tr.at('td[@class="last"]').text
    match = /(\d+)승-(\d+)패-(\d+)무/.match(record)
    puts "#{rank} - #{team} - #{match[1]}W - #{match[2]}L - #{match[3]}T"
  end
end
