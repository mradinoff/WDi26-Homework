Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/home' => 'pages#home'

  get '/secret/:number' => 'secret#reveal'

  get '/magic/:question' => 'magic#mindreader'

  get 'rps/:throw' => 'rps#game'

end
