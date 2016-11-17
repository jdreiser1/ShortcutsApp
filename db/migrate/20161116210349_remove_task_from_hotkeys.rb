class RemoveTaskFromHotkeys < ActiveRecord::Migration[5.0]
  def change
    remove_column :hotkeys, :task, :string
  end
end
