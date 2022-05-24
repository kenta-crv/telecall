Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ

    #get 'apotakumi' => 'top#apotakumi' #エンジランス
    #get 'engilance' => 'top#engilance' #エンジランス
  get 'movies' => 'top#movies' #ムービーズ
    #get 'ritonal' => 'top#ritonal' #リトナル
  get 'lp' => 'top#lp' #LPページ
  get 'cost' => 'top#cost' #金属加工
  get 'marketing' => 'top#marketing' #デジタルマーケティング
  get 'human' => 'top#human' #事業内容
  get 'business' => 'top#business' #事業内容
  get 'company' => 'top#company'  #会社概要
  get 'privacy' => 'top#privacy' #プライバシーポリシー
  get 'tcare' => 'top#tcare' #オリジナルマーケティング紹介
  get 'case' => 'top#case' #成功事例
  get 'question' => 'top#question' #ナレッジリスト
  get 'oneday' => 'top#oneday' #求人リスト
  get 'document' => 'top#document' #Okurite資料ダウンロード
  get 'syumatu' => 'top#syumatu' #シューマツ資料ダウンロード


  get 'whats' => 'top#whats' #アポ匠とは
  get 'original' => 'top#original' #オリジナルマーケティング
  get 'transaction' => 'top#transaction' #料金について
  get 'review' => 'top#review' #成功事例
  #get 'success_people' => 'top#success_people' #人材会社成功事例
  #get 'success_ads' => 'top#success_ads' #広告企業成功事例
  #get 'success_consulting' => 'top#success_consulting' #コンサルティング会社成功事例
  #get 'failed' => 'top#failed' #失敗事例
  #get 'failed_agents' => 'top#failed_agents' #代理店募集失敗事例
  #get 'failed_hp' => 'top#failed_hp' #HP制作会社失敗事例
  #get 'failed_it' => 'top#failed_it' #HP制作会社失敗事例
  get 'flow' => 'top#flow' #HP制作会社失敗事例


    get 'recruit' => 'recruit#recruit' #求人リスト
    get 'recruit/parttime3' => 'recruit#parttime3'
    get 'recruit/regular3' => 'recruit#regular3'
    get 'recruit/outsourcing' => 'recruit#outsourcing'
    get 'recruit/appointer2' => 'recruit#appointer2'
    get 'recruit/office' => 'recruit#office'

  resources :posts
  resources :columns
  resources :prefectures

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

  post '/download' => 'top#download'

  get 'recruits' => 'recruits#index'
  post 'recruits/confirm' => 'recruits#confirm'
  post 'recruits/thanks' => 'recruits#thanks'

  get '/outsourcings' => 'outsourcings#index'
  post 'outsourcings/confirm' => 'outsourcings#confirm'
  post 'outsourcings/thanks' => 'outsourcings#thanks'

  get '*path', controller: 'application', action: 'render_404'
end
