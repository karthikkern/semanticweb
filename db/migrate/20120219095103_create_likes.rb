class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :person_id
      t.integer :book_id

      t.timestamps
    end
  end
end
