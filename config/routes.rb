Rails.application.routes.draw do

    root 'batting_stats#scraped_batting_wars'

    resources :batting_stats
    resources :pitching_stats

end
