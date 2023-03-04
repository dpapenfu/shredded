class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :workout
      t.string :summary
      t.integer :reviews_count

      t.timestamps
    end
  end
end
