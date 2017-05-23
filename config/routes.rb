Rails.application.routes.draw do

    root 'pitching_stats#scraped_pitching_wars'

    resources :pitching_stats


    get 'scraped_batting_wars', to: 'batting_stats#scraped_batting_wars'



end
