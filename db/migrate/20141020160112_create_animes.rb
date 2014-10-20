class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.text :summary
      t.integer :episodes
      t.integer :status
      t.references :genre, index: true

      t.timestamps
    end
  end
end
