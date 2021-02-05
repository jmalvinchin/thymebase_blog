Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :posts do
      resources :comments
    end
  end

  resources :posts do
    resources :comments
  end
end
