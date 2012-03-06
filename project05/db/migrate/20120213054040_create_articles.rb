class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null => false
      t.string :author, :null => flase
      t.text :body, null => false
	  t.integer :update_count, :default => 0
	  t.integer :author_id
      t.timestamps
    end
  end
end
