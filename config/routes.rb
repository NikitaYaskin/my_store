MyStore::Application.routes.draw do
  # match ':controller(/:action(/:id))(.:format)'
  resources :items
end
