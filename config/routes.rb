Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]

  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
