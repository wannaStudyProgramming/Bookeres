Rails.application.routes.draw do
 # get 'reviews/show'
 # get 'reviews/index'
 # get 'reviews/edit'
 get "/" => "reviews#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :reviews
end
