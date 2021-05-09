class AddDirectorToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :director, :string
  end
end
