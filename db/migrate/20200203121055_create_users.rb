class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.integer :point
      t.integer :usedpoint
      t.text :imagetext
      t.timestamps
    end
  end
end
