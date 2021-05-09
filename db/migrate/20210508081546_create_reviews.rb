class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :movietitle
      t.string :caption
      t.string :content
      t.date :date
      t.string :cast
      t.string :time
      t.string :image
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
