Rails.application.routes.draw do
  resources :users, only:[:show, :]
  # 'users/show'
  #get 'users/edit'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  #get 'post_image/new'
  #get 'post_image/index'
  #get 'post_image/show'
  devise_for :users
root to: "homes#top"
  get 'homes/about' ,as: 'about'

end
