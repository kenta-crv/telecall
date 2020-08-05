class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.string :first_name #苗字
      t.string :last_name #名前
      t.string :tel #電話番号
      t.string :mail #メールアドレス
      t.string :postnumber #郵便番号
      t.string :address #住所
      t.string :select_1 #正社員/アルバイト
      t.string :select_2 #週稼働時間（アルバイトの場合）
      t.string :select_3 #稼働開始希望日
      t.string :remarks #テレアポ業務稼働経験

      t.string :other_1
      t.string :other_2
      t.string :other_3
      t.string :other_4
      t.timestamps
    end
  end
end
