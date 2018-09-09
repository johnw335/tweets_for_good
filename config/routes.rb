Rails.application.routes.draw do
  resources :tweet_donation_joins
  resources :classifications
  resources :tweets
  resources :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
