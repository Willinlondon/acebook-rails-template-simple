class CreateComment1s < ActiveRecord::Migration[6.1]
  def change
    create_table :comment1s do |t|
      t.string :username
      t.text :body
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
