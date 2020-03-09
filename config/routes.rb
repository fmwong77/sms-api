Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/sms', to: 'sms#create'
  get '/sms', to: 'sms#index'
end
