class CreateDescribes < ActiveRecord::Migration
  def change
    create_table :describes do |t|
      t.integer :article_id
      t.integer :song_id

      t.timestamps
    end
  end
end
