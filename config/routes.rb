require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'workers#index'

  post '/queue-throw-dice-worker' => 'workers#queue_throw_dice_worker', as: :queue_throw_dice_worker
end
