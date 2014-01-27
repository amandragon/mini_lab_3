RitlyApp::Application.routes.draw do

    root to: 'links#index'

    get '/links/new', to: 'links#new', as: :new_link

   get '/links.:id', to: 'links#show', as: :link

    post '/links', to: 'links#create'

    get '/links/save', to: 'links#save', as: :save

    get '/links/delete', to: 'links#delete', as: :delete

    get '/links.:id/:random_generated_string', to: 'links#result', as: :result

    get '/links.:id/:original_link', to: 'links#original', as: :original_link

end
