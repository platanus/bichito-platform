class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :title, null: false
      t.integer :stack, null: false, default: 0
      t.integer :kind, null: false, default: 0
      t.integer :difficulty, null: false, default: 0
      t.text :description, null: false
      t.string :link

      t.timestamps
    end
  end
end
