class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.integer :friend_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
