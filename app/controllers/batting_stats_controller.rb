class BattingStatsController < ApplicationController


  def scrape_espn
    @battingstats = BattingStat.all
  end
end
