class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.text :description
      t.jsonb :image_data
      t.string :role

      t.timestamps
    end
  end
end
