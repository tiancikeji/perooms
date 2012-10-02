Perooms::Application.routes.draw do
  post "hotelsearch/result"

  resources :rooms

  resources :hotels

  resources :pages do
    collection do
      get 'home'
    end
  end

  authenticated :user do
    root :to => 'pages#home'
  end
  root :to => "pages#home"
  devise_for :users
  # resources :users, :only => [:show, :index]
end
