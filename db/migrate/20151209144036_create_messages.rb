class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :title
      t.text :content
      t.string :receiver
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :messages, [:user_id, :created_at]
  end
end
