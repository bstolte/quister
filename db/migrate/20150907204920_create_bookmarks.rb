class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
    	t.string :link
    	t.string :name
    	t.text :description

      t.timestamps
    end
  end
end
