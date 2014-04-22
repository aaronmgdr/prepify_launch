Prepify::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    resources :results
  end

  resources :lessons do
    resources :questions do
    end
  end

  root :to => "home#index"
end