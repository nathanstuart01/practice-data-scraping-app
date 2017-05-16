class BattingStatsController < ApplicationController

  #def scrape_espn
  #  require 'open-uri'
  #  require 'nokogiri'

  #  url = "http://www.espn.com/mlb/stats/team/_/stat/batting/year/2017/seasontype/2"
  #  document = open(url)
  #  content =  document.read
  #  @parsed_content = Nokogiri::HTML(content)

  #  @marlins = Array.new

  #  @parsed_content.css('.evenrow.team-10-28').css('td').each do |td|
  #      @marlins << td.text
  #  end
#
  #  render template: 'scrape_espn'
#  end

  def team_batting_stats
    @batting_stats = BattingStat.scrape_espn
    render template: 'scrape_espn'
  end
end
