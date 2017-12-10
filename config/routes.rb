Rails.application.routes.draw do

  resources :showingseatallocations
  resources :showings
  resources :films
  resources :screens
  resources :subscriptions
  resources :bookingshowings
  devise_for :admins
  
  resources :bookings do
    resources :bookingshowings
  end
  
  devise_for :users do 
    resources :bookings
  end  
  
  get '/checkout' => 'cart#createBooking'
  get '/paid' => 'static_pages#paid'
  post '/search' => 'showings#search'
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get '/category/:title' => 'static_pages#category'
  
  root 'static_pages#home'
  
end

