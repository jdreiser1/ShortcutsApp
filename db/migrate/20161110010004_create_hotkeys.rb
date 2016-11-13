class CreateHotkeys < ActiveRecord::Migration[5.0]
  def change
    create_table :hotkeys do |t|
      t.string :task
      t.string :keystrokes
# t.references :user, null: true
      t.references :program, index: true, foreign_key: true
      t.timestamps
    end
  end
end
