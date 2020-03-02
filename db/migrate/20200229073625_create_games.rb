class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :cost
      t.timestamps
    end
  end
end
