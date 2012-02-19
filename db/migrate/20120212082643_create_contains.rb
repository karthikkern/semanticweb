class CreateContains < ActiveRecord::Migration
  def change
    create_table :contains do |t|
      t.integer :book_id
      t.integer :article_id

      t.timestamps
    end
  end
end
