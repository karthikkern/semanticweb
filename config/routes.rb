Semanticweb::Application.routes.draw do
  resources :likes

  resources :publishes

  resources :describes

  resources :refers

  resources :contains

  resources :listens

  resources :writes

  resources :reads

  resources :articles

  resources :songs

  resources :books

  resources :people

  root :to => 'people#index'
  match ':controller(/:action(/:id))(.:format)'
end
