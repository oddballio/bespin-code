Rails.application.routes.draw do
  get '/' => redirect('/admin')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
