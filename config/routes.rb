Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/people', to: 'people#index'
  get '/people/:id', to: 'people#show'
  get '/quotes', to: 'quotes#index'
  get '/people/new', to: 'people#new'
  get '/quotes/:id', to: 'quotes#show'
  get '/people/:id/quotes', to: 'people#quote_index'
end
