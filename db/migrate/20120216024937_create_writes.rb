class CreateWrites < ActiveRecord::Migration
  def change
    create_table :writes do |t|
      t.integer :person_id
      t.integer :article_id

      t.timestamps
    end
  end
end
