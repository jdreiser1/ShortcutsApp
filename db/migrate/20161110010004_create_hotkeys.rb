class CreateHotkeys < ActiveRecord::Migration[5.0]
  def change
    create_table :hotkeys do |t|
      t.string :name
      t.string :function

      t.references :program, index: true, foreign_key: true
      t.timestamps
    end
  end
end
