class AddApiKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :api_key, :string

    add_index :users, :api_key, unique: true
    add_index :users, :uid, unique: true

    add_index :todos, :user_id
  end
end
