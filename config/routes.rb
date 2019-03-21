Rails.application.routes.draw do
  get 'articles/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only:[:index, :new, :create, :destroy, :update, :show]
end
