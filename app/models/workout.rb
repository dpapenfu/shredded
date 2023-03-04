# == Schema Information
#
# Table name: workouts
#
#  id            :integer          not null, primary key
#  reviews_count :integer
#  summary       :string
#  workout       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Workout < ApplicationRecord
  has_many(:reviews, { :class_name => "Review", :foreign_key => "workout_id", :dependent => :destroy })
  has_many(:users, { :through => :reviews, :source => :user })
end
