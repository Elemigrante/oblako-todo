Rails.application.routes.draw do
  resources :projects, only: %i[index]
end
