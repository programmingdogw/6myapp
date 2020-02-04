class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    # 検索項目にインデックスを追加し、オプションで一意性を強制。
    add_index :users, :email, unique: true
  end
end
