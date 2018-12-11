Rails.application.routes.draw do
  resources :topics do
    resources :posts, :except => [:index]
  end

  resources :posts do
    resources :comments, :except => [:show, :index]
  end
end
