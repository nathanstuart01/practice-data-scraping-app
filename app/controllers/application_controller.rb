class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def scrape_espn
    require 'open-uri'
    require 'nokogiri'

    url = "http://www.espn.com/mlb/stats/team/_/stat/batting"
    document = open(url)
    content =  document.read
    @parsed_content = Nokogiri::HTML(content)

    @marlins = Array.new

    @parsed_content.css('.oddrow.team-10-28').css('td').each do |td|
        @marlins << td.text
    end

    render template: 'scrape_espn'
  end


end
