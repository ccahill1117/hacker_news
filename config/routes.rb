Rails.application.routes.draw do
  root :to => 'topics#index'
  resources :topics do
    resources :posts, :except => [:index]
  end

  resources :posts do
    resources :comments, :except => [:show, :index]
  end
end
