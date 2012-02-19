class CreateListens < ActiveRecord::Migration
  def change
    create_table :listens do |t|
      t.integer :person_id
      t.integer :song_id

      t.timestamps
    end
  end
end
