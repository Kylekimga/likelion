Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'homes/index'
  get 'homes/second'
  get 'homes/third'
  get 'homes/forth'
  get 'homes/delete/:id' => 'homes#delete'
  get 'homes/delete_all'
  get 'homes/edit/:id' => 'homes#edit'
  get 'homes/update/:id' => 'homes#update'
  root 'homes#index'
end