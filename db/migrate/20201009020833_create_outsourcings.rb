class CreateOutsourcings < ActiveRecord::Migration[5.2]
  def change
    create_table :outsourcings do |t|
      t.string :first_name #苗字
      t.string :last_name #名前
      t.string :tel #電話番号
      t.string :mail #メールアドレス
      t.string :postnumber #郵便番号
      t.string :address #住所
      t.string :age #年齢
      t.string :remarks #事務経験内容を記載してください。
      
      t.string :other_1 #長期で稼働を行う事が出来ますか？
      t.string :other_2 #日々責任を持って稼働を行えますか？
      t.date :other_3 #いつから稼働開始可能ですか？
      t.string :other_4 #応募はMACPCを使用出来、Pages/Numbers/Keynoteを利用出来ますか？
      t.timestamps
    end
  end
end
