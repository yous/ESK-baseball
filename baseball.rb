#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new.get 'http://kbodata.news.naver.com/m_rank/rank_team.asp'
a.search('//table[@class="table_board2"]/tbody/tr').each {|v|
  puts v.search('td').text
}
