namespace :fetch_batting_stats do

  desc "Collect Marlins Stats"
  task collect_batting_stats: :environment do

    require 'open-uri'
    require 'nokogiri'

    url = "http://www.espn.com/mlb/stats/team/_/stat/batting/year/2017/seasontype/2"
    document = open(url)
    content =  document.read
    @parsed_content = Nokogiri::HTML(content)

    @marlins = Array.new

    @parsed_content.css('.oddrow.team-10-28').css('td').each do |td|
      @marlins << td.text
    end
    BattingStat.create(ops: @marlins.last.to_f)
  end
end
