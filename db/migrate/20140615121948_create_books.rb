class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
