class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :game_system
      t.string :publisher
      t.string :type

      t.timestamps
    end
  end
end
