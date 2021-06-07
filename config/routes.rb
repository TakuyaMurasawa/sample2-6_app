Rails.application.routes.draw do
  # get 'homes/top'
  get 'top' => 'homes#top'
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  # .../todolists/1 や .../todolists/3 に該当する
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
end
