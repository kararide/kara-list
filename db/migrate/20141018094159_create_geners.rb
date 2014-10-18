class CreateGeners < ActiveRecord::Migration
  def change
    create_table :geners do |t|

      t.timestamps
    end
  end
end
