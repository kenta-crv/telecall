class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :company #会社名
      t.string :name #担当者名
      t.string :tel #電話番号
      t.string :mail #メールアドレス
      t.string :address #住所
      t.string :url #URL

      t.string :business #アポ取りを行う商材
      t.string :number #月間獲得件数
      t.string :start #開始時期
      t.string :target_industry #ターゲット業種
      t.string :target_employment #ターゲット人数規模
      t.string :document_1 #資料１
      t.string :document_2 #資料２
      t.string :document_3 #資料３
      t.string :remarks #事業内容その他
      t.timestamps
    end
  end
end
