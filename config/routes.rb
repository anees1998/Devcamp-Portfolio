Rails.application.routes.draw do
  devise_for :users , path: '', path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'} 

  resources :portfolios , except:[:show]

  get 'portfolio/:id', to:'portfolios#shows', as:'portfolio_show'

  get 'portfolios/angular', to:'portfolios#angular', as:"angular"

  get 'newpage/info'
  #get 'pages/home'
  #get 'pages/about'
  get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'about-us', to: 'pages#about', as: 'pageabout'
  
  root to: 'pages#home'
end
