Rails.application.routes.draw do
  get 'sales', to: 'sales#done'
  get 'sales/new'
  post 'sales', to: 'sales#create'
  get 'sales/:id', to: 'sales#show', as: 'sale'
  delete 'sales/:id', to: 'sales#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
