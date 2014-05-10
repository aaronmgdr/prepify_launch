class ReAddAnswersAsATable < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.text :value
      t.boolean :correct
      t.text :explaination
      t.integer :question_id, :index => true
      t.integer :result_id

      t.timestamps
    end

    add_index :users, :username, :unique => true
    remove_column :questions, :answers
    remove_column :results, :answer_id
  end

  def down
    remove_table :answers

    add_column :questions, :answers, :json
    add_column :results, :answer_id, :integer, :index => true
  end
end
