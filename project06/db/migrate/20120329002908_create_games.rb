class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :rating
      t.string :author

      t.timestamps
    end
  end
end
