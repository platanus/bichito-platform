class CreateProgramThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :program_themes do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.integer :order

      t.timestamps
    end
  end
end
