Rails.application.routes.draw do
 


  resources :recommendeduniversities

  root 'static_pages#home'
  get 'general/ranking'
  get 'general/hot_ranking'
  get 'general/add_following'

  resources :schools
  resources :majorrankings
  resources :my_schools, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
  
  resources :schools do
    resources :reviews
  end

  get 'static_pages/home'
  get 'static_pages/help'
  get 'mylist' => 'users#mylist'
  get 'list' => 'users#list'
  get 'allschools' => 'schools#index'
  post 'addSchool' => 'my_schools#addSchool'
  get '/majoruniversities/new'=>'majoruniversities#new'
  # get '/direct-to-99-bg.webm'=>'/assets/direct-to-99-bg.webm'
  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"} do
    get 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  
 resource :users, :only => [:index, :show] do
   member do
     get :following, :followers, :list
   end
 end


  get '/general/ranking'=>'general#ranking'
  get '/general/index'=>'general#index'
  get '/general/search_friend' => 'general#search_friend'
  
  get 'majorranking' => 'majorrankings#'
 
  resources :general do
    collection { post :import }
  end
  
  get 'index'=>'general#index'
  
end
