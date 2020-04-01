Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ
    get 'engilance' => 'top#engilance' #エンジランス
    get 'movies' => 'top#movies' #ムービーズ
    get 'mail' => 'top#mail' #メールマーケティング
    get 'metal' => 'top#metal' #金属加工
    get 'marketing' => 'top#marketing' #デジタルマーケティング
  get 'business' => 'top#business'
  get 'price' => 'top#price'
  get 'company' => 'top#company'
  get 'agent' => 'top#agent'
  get 'review' => 'top#review'
  get 'recruit' => 'top#recruit'
    get 'recruit/parttime' => 'top#parttime'
    get 'recruit/regular' => 'top#regular'
    get 'recruit/subcontracting' => 'top#subcontracting'
  get 'foreign' => 'top#foreign'

  resources :posts
  resources :workers
  get 'workers/agreement' => 'workers#agreement'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'
end
