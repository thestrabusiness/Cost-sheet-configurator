Rails.application.routes.draw do
  resources :cost_sheets do
    resources :configs, except: [:show]
  end

  resources :config, only: [:show] do
    resources :config_items
  end
end
