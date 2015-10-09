class CreateSuggestBooks < ActiveRecord::Migration
  def change
    create_table :suggest_books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :description
      t.string :suggestU
      t.timestamps null: false
    end
  end
end
