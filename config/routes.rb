Rails.application.routes.draw do
  resources :bills, except: [:new, :edit]
  resources :people, except: [:new, :edit]
  resources :groceries, except: [:new, :edit]
  resources :lists, except: [:new, :edit]


end