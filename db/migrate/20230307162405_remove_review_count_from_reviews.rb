class RemoveReviewCountFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :review_count, :integer
  end
end
