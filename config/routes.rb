Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do                                                            
    collection do                                                                
      post '/login', to: 'users#login'                                            
    end                                                                          
  end     
  resources :posts

  #API GATEWAY URLS
  #users
  get '/admin/users', to: 'users#index'
  post '/admin/users/login', to: 'users#login'
  post '/admin/users', to: 'users#create'
  get '/admin/users/:id', to: 'users#show'
  put '/admin/users/:id', to: 'users#update'
  delete '/admin/users/:id', to: 'users#destroy'

  #posts
  get '/admin/posts', to: 'posts#index'
  post '/admin/posts', to: 'posts#create'
  get '/admin/posts/:id', to: 'posts#show'
  put '/admin/posts/:id', to: 'posts#update'
  delete '/admin/posts/:id', to: 'posts#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
