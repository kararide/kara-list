class CreateAnimesGenresJoin < ActiveRecord::Migration
  def change
    create_table :animes_genres_joins, :id => false do |t|
    	t.integer :anime_id
    	t.integer :genre_id
    end
  end
end
