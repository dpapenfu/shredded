# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  comment     :string
#  star_rating :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  workout_id  :integer
#
class Review < ApplicationRecord
  validates :comment, presence: true
  validates :star_rating, presence: true
  validates :user_id, presence: true
  validates :workout_id, presence: true
  
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:workout, { :required => true, :class_name => "Workout", :foreign_key => "workout_id" })
end
