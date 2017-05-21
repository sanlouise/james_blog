Rails.application.routes.draw do
  root 'posts#index'

  get 'about', to: 'pages#about'

  devise_for :admins

  mount Ckeditor::Engine => '/ckeditor'

  resources :posts
end
