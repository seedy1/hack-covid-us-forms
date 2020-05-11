Rails.application.routes.draw do

  resources :forms
  resources :companies
  resources :categories
  devise_for :accounts
  root 'welcome#home'
  
  get 'welcome/about'
  get 'welcome/contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
