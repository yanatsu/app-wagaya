Rails.application.routes.draw do
  root  'inventorys#index'  #herokuへアップロードに備えて追加

  get 'inventorys/menu'
  get 'inventorys/place'
  get 'inventorys/list'
  resources :inventorys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
