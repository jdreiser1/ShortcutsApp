class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :hotkey
      t.string :comment
      t.timestamps
    end
  end
end
