Rails.application.routes.draw do
  resources :items
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
    get "signin" => 'devise/sessions#new'
    delete "signout" => 'devise/sessions#destroy'
    get "signup" => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact_us' => 'pages#contact-us'
  get 'create_follow', to: 'follows#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
