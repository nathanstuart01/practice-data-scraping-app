namespace :fetch_batting_stats do

  desc "Collect OPS Stats"
  task collect_batting_stats: :environment do

    require 'open-uri'
    require 'nokogiri'

    url = "http://www.espn.com/mlb/stats/team/_/stat/batting"
    document = open(url)
    content =  document.read
    @parsed_content = Nokogiri::HTML(content)

    @nationals = Array.new
    @parsed_content.css('.oddrow.team-10-20').css('td').each do |td|
      @nationals << td.text
    end
    BattingStat.create(ops: @nationals.last.to_f, team_batting: 'nationals')

    @yankees = Array.new
    @parsed_content.css('.evenrow.team-10-10').css('td').each do |td|
      @yankees << td.text
    end
    BattingStat.create(ops: @yankees.last.to_f, team_batting: 'yankees')

    @brewers = Array.new
    @parsed_content.css('.oddrow.team-10-8').css('td').each do |td|
      @brewers << td.text
    end
    BattingStat.create(ops: @brewers.last.to_f, team_batting: 'brewers')

    @astros = Array.new
    @parsed_content.css('.evenrow.team-10-18').css('td').each do |td|
      @astros << td.text
    end
    BattingStat.create(ops: @astros.last.to_f, team_batting: 'astros')

    @diamondbacks = Array.new
    @parsed_content.css('.oddrow.team-10-29').css('td').each do |td|
      @diamondbacks << td.text
    end
    BattingStat.create(ops: @diamondbacks.last.to_f, team_batting: 'diamondbacks')

    @dodgers = Array.new
    @parsed_content.css('.evenrow.team-10-19').css('td').each do |td|
      @dodgers << td.text
    end
    BattingStat.create(ops: @dodgers.last.to_f, team_batting: 'dodgers')

    @rays = Array.new
    @parsed_content.css('.oddrow.team-10-30').css('td').each do |td|
      @rays << td.text
    end
    BattingStat.create(ops: @rays.last.to_f, team_batting: 'rays')

    @mariners = Array.new
    @parsed_content.css('.evenrow.team-10-12').css('td').each do |td|
      @mariners << td.text
    end
    BattingStat.create(ops: @mariners.last.to_f, team_batting: 'mariners')

    @mets = Array.new
    @parsed_content.css('.oddrow.team-10-21').css('td').each do |td|
      @mets << td.text
    end
    BattingStat.create(ops: @mets.last.to_f, team_batting: 'mets')

    @rangers = Array.new
    @parsed_content.css('.evenrow.team-10-13').css('td').each do |td|
      @rangers << td.text
    end
    BattingStat.create(ops: @rangers.last.to_f, team_batting: 'rangers')

    @rockies = Array.new
    @parsed_content.css('.oddrow.team-10-27').css('td').each do |td|
      @rockies << td.text
    end
    BattingStat.create(ops: @rockies.last.to_f, team_batting: 'rockies')

    @reds = Array.new
    @parsed_content.css('.evenrow.team-10-17').css('td').each do |td|
      @reds << td.text
    end
    BattingStat.create(ops: @reds.last.to_f, team_batting: "reds")

    @cubs = Array.new
    @parsed_content.css('.oddrow.team-10-16').css('td').each do |td|
      @cubs << td.text
    end
    BattingStat.create(ops: @cubs.last.to_f, team_batting: 'cubs')

    @tigers = Array.new
    @parsed_content.css('.evenrow.team-10-6').css('td').each do |td|
      @tigers << td.text
    end
    BattingStat.create(ops: @tigers.last.to_f, team_batting: "tigers")

    @orioles = Array.new
    @parsed_content.css('.oddrow.team-10-1').css('td').each do |td|
      @orioles << td.text
    end
    BattingStat.create(ops: @orioles.last.to_f, team_batting: "orioles")

    @redsox = Array.new
    @parsed_content.css('.evenrow.team-10-2').css('td').each do |td|
      @redsox << td.text
    end
    BattingStat.create(ops: @redsox.last.to_f, team_batting: "red sox")

    @angels = Array.new
    @parsed_content.css('.oddrow.team-10-3').css('td').each do |td|
      @angels << td.text
    end
    BattingStat.create(ops: @angels.last.to_f, team_batting: "angels")

    @braves = Array.new
    @parsed_content.css('.evenrow.team-10-15').css('td').each do |td|
      @braves << td.text
    end
    BattingStat.create(ops: @braves.last.to_f, team_batting: "braves")

    @cardinals = Array.new
    @parsed_content.css('.oddrow.team-10-24').css('td').each do |td|
      @cardinals << td.text
    end
    BattingStat.create(ops: @cardinals.last.to_f, team_batting: "cardinals")

    @phillies = Array.new
    @parsed_content.css('.evenrow.team-10-22').css('td').each do |td|
      @phillies << td.text
    end
    BattingStat.create(ops: @phillies.last.to_f, team_batting: "phillies")

    @indians = Array.new
    @parsed_content.css('.oddrow.team-10-5').css('td').each do |td|
      @indians << td.text
    end
    BattingStat.create(ops: @indians.last.to_f, team_batting: "indians")

    @bluejays = Array.new
    @parsed_content.css('.evenrow.team-10-14').css('td').each do |td|
      @bluejays << td.text
    end
    BattingStat.create(ops: @bluejays.last.to_f, team_batting: "blue jays")

    @whitesox = Array.new
    @parsed_content.css('.oddrow.team-10-4').css('td').each do |td|
      @whitesox << td.text
    end
    BattingStat.create(ops: @whitesox.last.to_f, team_batting: "white sox")

    @marlins = Array.new
    @parsed_content.css('.evenrow.team-10-28').css('td').each do |td|
      @marlins << td.text
    end
    BattingStat.create(ops: @marlins.last.to_f, team_batting: "marlins")

    @twins = Array.new
    @parsed_content.css('.oddrow.team-10-9').css('td').each do |td|
      @twins << td.text
    end
    BattingStat.create(ops: @twins.last.to_f, team_batting: "twins")

    @athletics = Array.new
    @parsed_content.css('.evenrow.team-10-11').css('td').each do |td|
      @athletics << td.text
    end
    BattingStat.create(ops: @athletics.last.to_f, team_batting: "athletics")

    @padres = Array.new
    @parsed_content.css('.oddrow.team-10-25').css('td').each do |td|
      @padres << td.text
    end
    BattingStat.create(ops: @padres.last.to_f, team_batting: "padres")

    @pirates = Array.new
    @parsed_content.css('.evenrow.team-10-23').css('td').each do |td|
      @pirates << td.text
    end
    BattingStat.create(ops: @pirates.last.to_f, team_batting: "pirates")

    @giants = Array.new
    @parsed_content.css('.oddrow.team-10-26').css('td').each do |td|
      @giants << td.text
    end
    BattingStat.create(ops: @giants.last.to_f, team_batting: "giants")

    @royals = Array.new
    @parsed_content.css('.evenrow.team-10-7').css('td').each do |td|
      @royals << td.text
    end
    BattingStat.create(ops: @royals.last.to_f, team_batting: "royals")

  end
end
