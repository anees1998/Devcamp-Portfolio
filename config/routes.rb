Rails.application.routes.draw do
  resources :portfolios , except:[:show]

  get 'portfolio/:id', to:'portfolios#shows', as:'portfolio_show'

  get 'newpage/info'
  #get 'pages/home'
  #get 'pages/about'
  get 'pages/contact'

  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'about-us', to: 'pages#about', as: 'pageabout'
  
  root to: 'pages#home'
end
