class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :account
      t.boolean :active
      t.string :image
      t.timestamps
    end
  end
end
