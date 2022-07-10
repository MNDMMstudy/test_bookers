Rails.application.routes.draw do
  get 'lists/new'
  get 'books' => 'lists#index'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'
end
