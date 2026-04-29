Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # RouteSet (in memory) that only runs when 'rails server' runs:
  #   GET  /notes      → notes#index
  #   GET  /notes/:id  → notes#show
  #   POST /notes      → notes#create
  resources :notes, only: [ :index, :show, :create ]
end
