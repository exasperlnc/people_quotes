Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/people/new', to: 'people#new'
  get '/people', to: 'people#index'
  get '/quotes', to: 'quotes#index'
  get '/quotes/:id', to: 'quotes#show'
  get '/people/:id', to: 'people#show'
  get '/people/:id/quotes', to: 'people#quote_index'
  get '/people/:id/update', to: 'people#update'
end
