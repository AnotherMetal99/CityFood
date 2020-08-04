Rails.application.routes.draw do
  get 'contact_us' => 'page#contact_us'
  get 'menu' => 'page#menu'
  devise_for :users
  root to: 'page#home', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
