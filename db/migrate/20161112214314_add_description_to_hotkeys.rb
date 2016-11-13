class AddDescriptionToHotkeys < ActiveRecord::Migration[5.0]
  def change
    add_column :hotkeys, :description, :string
  end
end
