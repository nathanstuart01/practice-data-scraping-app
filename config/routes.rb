Rails.application.routes.draw do

    root 'batting_stats#team_batting_stats'

    resources :batting_stats

end
