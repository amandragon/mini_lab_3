RitlyApp::Application.routes.draw do

    root to: 'links#index'

    get '/links/new', to: 'links#new', as: :new_link

   get '/links/:id', to: 'links#preview', as: :link

   get '/go/:random_generated_string', to: 'links#go', as: :go

    post '/links', to: 'links#create'

    delete '/links/:id', to: 'links#delete', as: :delete



end
