class AddTimeToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :time, :integer
  end
end
