#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'

a = Mechanize.new.get 'http://kbodata.news.naver.com/m_rank/rank_team.asp'
puts a.body
