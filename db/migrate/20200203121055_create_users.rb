class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.birthdate :birthdate not_null:, null:false
      t.deathdate :deathdate not_null:, null:false
      t.timestamps
    end
  end
end
