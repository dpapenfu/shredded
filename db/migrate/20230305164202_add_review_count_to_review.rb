class AddReviewCountToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :review_count, :integer
  end
end
