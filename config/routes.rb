Rails.application.routes.draw do
  get 'lists/new'
  get '/' => 'homes#top'
  get 'books' => 'lists#index'
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
