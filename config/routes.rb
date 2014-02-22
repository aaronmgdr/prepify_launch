Prepify::Application.routes.draw do
  get "answers/index"
  get "activities/create"
  get "activities/show"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    resources :results
  end

  resources :lessons do
    resources :questions do
      resources :answers do
      end
    end
  end
  
end