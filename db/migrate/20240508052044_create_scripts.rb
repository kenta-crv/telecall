class CreateScripts < ActiveRecord::Migration[5.2]
  def change
    create_table :scripts do |t|
      t.references :contract, null: false, foreign_key: true
      t.string :sales_manager
      t.string :contact_number
      t.string :infomation 
      t.string :hearing_1 
      t.string :hearing_2
      t.string :hearing_3
      t.string :question_1
      t.string :answer_1
      t.string :question_2
      t.string :answer_2
      t.string :question_3
      t.string :answer_3
      t.string :question_4
      t.string :answer_4
      t.string :question_5
      t.string :answer_5
      t.string :question_6
      t.string :answer_6
      t.string :message #その他要望
      t.timestamps
    end
  end
end
