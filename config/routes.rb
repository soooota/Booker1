Rails.application.routes.draw do
  
  resources :titles
  get 'home/index'
  resources :books,only:[:index,:show,:update,:destroy,
  	:top,:create,:edit]
  root to: 'home#index'
  get 'top' => 'books#top'
  	end
