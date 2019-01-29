class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :isbn
      t.references :author
      t.date :published_at
      t.timestamps null: false
    end
  end
end
