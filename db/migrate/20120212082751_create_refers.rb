class CreateRefers < ActiveRecord::Migration
  def change
    create_table :refers do |t|
      t.integer :book_id
      t.integer :song_id

      t.timestamps
    end
  end
end
