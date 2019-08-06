Rails.application.routes.draw do
  get '/', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Aranan otelleri getirir.
  get '/find-place', to: 'home#place_search', as: 'place_search'
  
  # Seçilen otelin detaylarını listeler
  get '/place-detail', to: 'home#place_detail', as: 'place_detail'

#  root 'home#index'

end
