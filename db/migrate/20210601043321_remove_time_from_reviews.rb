class RemoveTimeFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :time, :string
  end
end
