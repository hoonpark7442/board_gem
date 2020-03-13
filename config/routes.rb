Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :blogs do
  	resources :comments
  end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "blogs#index"
end
