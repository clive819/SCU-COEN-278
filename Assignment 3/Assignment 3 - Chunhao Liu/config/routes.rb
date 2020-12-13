Rails.application.routes.draw do

    root 'shopper#index', as: 'shopper'

    get 'admin/', to: 'admin#index'

    get 'shopper/', to: "shopper#index"
    get 'shopper/search', to: "shopper#search"
    get 'shopper/show', to: "shopper#show"

    get 'login/', to: 'access#new'
    post 'login/', to: 'access#create'
    delete 'logout/', to: 'access#destroy'

    resources :products
    resources :lineitems
    resources :carts
    resources :users
    resources :orders
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
