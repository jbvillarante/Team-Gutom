TeamGutom::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resource :reports
  root :to => "home#index"
end
