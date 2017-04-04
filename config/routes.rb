Rails.application.routes.draw do
  resources :users, format: false do
    resources :posts
  end

  resources :tokens, only: :create, format: false
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
