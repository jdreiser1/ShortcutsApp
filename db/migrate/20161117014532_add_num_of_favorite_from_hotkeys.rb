class AddNumOfFavoriteFromHotkeys < ActiveRecord::Migration[5.0]
  def change
    add_column :hotkeys, :numOfFavorite, :integer, :default => 0
  end
end
