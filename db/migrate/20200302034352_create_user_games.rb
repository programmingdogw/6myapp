class CreateUserGames < ActiveRecord::Migration[5.1]
  def change
    create_table :user_games do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      # t.integer :user_id
      # t.integer :game_id
      t.timestamps
    end
  end
end
