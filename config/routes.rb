Rails.application.routes.draw do
  get '/', to: 'games#new'
  get 'score', to: 'games#score'
end
