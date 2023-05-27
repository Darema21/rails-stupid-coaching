Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: '/ask',
  get '/ask', to: 'questions#ask'

  get '/answers', to: 'questions#answers', as: 'submit_question'
  # Defines the root path route ("/")
  # root "articles#index"
end
