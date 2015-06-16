Rails.application.routes.draw do

  resources :boards do 
    resources :tickets
  end

  root 'boards#index'
end
