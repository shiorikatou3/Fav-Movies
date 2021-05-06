class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :favmoviesid
      t.string :email
      t.string :password_digest
      t.text :introduce
      t.string :gender
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
