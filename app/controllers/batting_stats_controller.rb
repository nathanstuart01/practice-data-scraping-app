class BattingStatsController < ApplicationController


  def team_batting_stats
    @battingstats = BattingStat.all
    render template: 'scrape_espn'
  end
end
