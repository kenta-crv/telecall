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
  get 'oneday' => 'top#oneday' #求人リスト

    get 'recruit' => 'recruit#recruit' #求人リスト
    get 'recruit/parttime_shibuya' => 'recruit#parttime_shibuya'
    get 'recruit/regular_shibuya' => 'recruit#regular_shibuya'
    get 'recruit/parttime_shinjuku' => 'recruit#parttime_shinjuku'
    get 'recruit/regular_shinjuku' => 'recruit#regular_shinjuku'
    get 'recruit/regular_ikebukuro' => 'recruit#regular_ikebukuro'
    get 'recruit/regular_ikebukuro' => 'recruit#regular_ikebukuro'
    get 'recruit/parttime_ginza' => 'recruit#parttime_ginza'
    get 'recruit/regular_ginza' => 'recruit#regular_ginza'
    get 'recruit/regular_yokohama' => 'recruit#regular_yokohama'
    get 'recruit/regular_yokohama' => 'recruit#regular_yokohama'
    get 'recruit/regular_saitama' => 'recruit#regular_saitama'
    get 'recruit/regular_saitama' => 'recruit#regular_saitama'

    get 'recruit/subcontracting' => 'recruit#subcontracting'
    get 'recruit/homework' => 'recruit#homework'

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
