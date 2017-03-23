Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    get 'static' => 'static#index'
    get 'dynamic' => 'dynamic#index'
    get 'input' => 'input#index'
    post 'input' => 'input#index'
end
