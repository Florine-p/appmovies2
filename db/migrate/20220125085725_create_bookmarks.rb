class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movies, null: false, foreign_key: true
      t.boolean :true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
