class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.text :summary
      t.integer :episodes
      t.string :status 

      t.timestamps
    end
  end
end
