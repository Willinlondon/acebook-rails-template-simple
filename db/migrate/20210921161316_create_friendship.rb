class CreateFriendship < ActiveRecord::Migration[6.1]
  def change
    create_table :friendship do |t|
      t.integer :friend1_id, null: false, foreign_key: true
      t.integer :friend2_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
