Orgup::Application.routes.draw do
	devise_for :members
	resources :members

  root :to => 'members#index'
end
