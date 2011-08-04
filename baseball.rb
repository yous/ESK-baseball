#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new.get 'http://kbodata.news.naver.com/m_rank/rank_team.asp'
a.search('//table[@class="table_board2"]/tbody/tr').each {|v|
  p = v.search('td')
  p[-1].text =~ /(\d+)승\s*(\d+)패\s*(\d+)무/
  puts "#{p[0].text} - #{p[1].text} - #{$1} - #{$2} - #{$3}"
}
