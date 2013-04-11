MyApplication::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

#  devise_for :users do
#    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
#  end
  devise_for :users

  resources :users
end
