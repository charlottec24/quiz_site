class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.text :text
      t.boolean :answer
      t.integer :user_id
      t.timestamps
    end
  end
end
