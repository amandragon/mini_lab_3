RitlyApp::Application.routes.draw do

    root to: 'links#index'

    get '/links/new', to: 'links#new', as: :new_link

    get '/links.:id', to: 'links#show', as: :link

    post '/links', to: 'links#create'

    get '/links/save', to: 'links#save'

end
