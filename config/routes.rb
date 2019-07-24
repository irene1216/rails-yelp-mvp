Rails.application.routes.draw do
  get 'restaurant/:restaurant_id/reviews/new', to: 'reviews#new'
  post 'restaurant/:restaurant_id/reviews', to: 'reviews#create'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show'
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'
    resources :restaurants do
        resources :reviews, only: [ :new, :create ]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


    #                                       Controller#Action
    #    restaurant_reviews POST /restaurant/:restaurant_id/reviews(.:format)         reviews#create
    # new_restaurant_review GET  /restaurant/:restaurant_id/reviews/new(.:format)     reviews#new
    #      restaurant_index GET  /restaurant(.:format)                                restaurant#index
    #                       POST /restaurant(.:format)                                restaurant#create
    #        new_restaurant GET  /restaurant/new(.:format)                            restaurant#new
    #            restaurant GET  /restaurant/:id(.:format)                            restaurant#show
