Rails.application.routes.draw do
  resources :health, only: %i[index]
  get '/' => redirect('/admin')
end
