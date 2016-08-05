Rails.application.routes.draw do
  
  resources :users do
  resources :microposts , only: [:new, :create]
  end

  resources :microposts


  # resources :users do
  #   resources :microposts
  # end

  root "users#index"
 

 get '/eddie' , to: "users#index", as: 'my_name'
end
