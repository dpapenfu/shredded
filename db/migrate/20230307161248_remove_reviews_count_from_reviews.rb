class RemoveReviewsCountFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :reviews_count, :integer
  end
end
