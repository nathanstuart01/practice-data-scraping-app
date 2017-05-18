Rails.application.routes.draw do

    root 'batting_stats#scrape_espn'

    resources :batting_stats

end
