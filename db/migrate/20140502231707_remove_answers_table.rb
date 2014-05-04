class RemoveAnswersTable < ActiveRecord::Migration
  def up
    drop_table :answers
  end

  def down
    create_table :answers do |t|
      t.string :value
      t.boolean :correct
      t.text :explaination
      t.integer :question_id, :index => true

      t.timestamps
    end
  end
end
