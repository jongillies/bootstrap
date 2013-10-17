MyApplication::Application.routes.draw do

  resources :posts

  namespace :api do
    api :version => 1 do
      resources :posts
    end
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => 'home#index'

  match '/app_env' => 'home#app_env'
#  devise_for :users do
#    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
#  end
  devise_for :users

  resources :users do
    # This will create URLs like /my_resources/page/33 instead of /my_resources?page=33. This is now a friendly URL, but it also has other added benefits…
    get 'page/:page', :action => :index, :on => :collection
  end

end
