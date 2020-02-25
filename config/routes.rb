MyStore::Application.routes.draw do
  # match ':controller(/:action(/:id))(.:format)'
  resources :items do
  	get :upvote,    on: :member
  	get :expensive, on: :collection
  end
end
