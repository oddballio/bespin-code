Rails.application.routes.draw do
  resources :health, only: %i[index]
  namespace :v0, defaults: { format: 'json' } do
    resources :services, only: :show
  end
  get '/' => redirect('/admin')
end
