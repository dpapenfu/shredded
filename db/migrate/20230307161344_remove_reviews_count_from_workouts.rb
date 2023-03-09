class RemoveReviewsCountFromWorkouts < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :reviews_count, :integer
  end
end
