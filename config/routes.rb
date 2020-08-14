Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ

    get 'apotakumi' => 'top#apotakumi' #エンジランス
    get 'engilance' => 'top#engilance' #エンジランス
    get 'movies' => 'top#movies' #ムービーズ
    get 'ritonal' => 'top#ritonal' #リトナル
    get 'mail' => 'top#mail' #メールマーケティング
    get 'recruitment' => 'top#recruitment' #メールマーケティング
    get 'metal' => 'top#metal' #金属加工
    get 'marketing' => 'top#marketing' #デジタルマーケティング
  get 'business' => 'top#business' #事業内容
  get 'company' => 'top#company'  #会社概要
  get 'privacy' => 'top#privacy' #プライバシーポリシー
  get 'tcare' => 'top#tcare' #オリジナルマーケティング紹介
  get 'case' => 'top#case' #成功事例
  get 'question' => 'top#question' #ナレッジリスト
  get 'recruit' => 'top#recruit' #求人リスト
  get 'oneday' => 'top#oneday' #求人リスト
    get 'recruit/parttime' => 'top#parttime'
    get 'recruit/regular' => 'top#regular'
    get 'recruit/subcontracting' => 'top#subcontracting'
    get 'recruit/homework' => 'top#homework'

  resources :topics
  resources :posts

  get 'script' => 'top#script'
  get 'workers/new' => 'workers#new'
  post 'workers/confirm' => 'workers#confirm'
  post 'workers/thanks' => 'workers#thanks'

  get '/estimates' => 'estimates#index'
  post 'estimates/confirm' => 'estimates#confirm'
  post 'estimates/thanks' => 'estimates#thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'
end
