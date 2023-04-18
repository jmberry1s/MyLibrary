class RenameColumnTypeToGameTypeInBooks < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :type, :game_type
  end
end
