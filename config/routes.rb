Rails.application.routes.draw do

  resources :boards do 
    resources :tickets
  end

  resources :tickets
  root 'boards#index'
end
