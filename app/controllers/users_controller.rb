class UsersController < ApplicationController
 
  
  def show
    @user = User.find_by!(username: params.fetch(:username))
       
    @user_workouts = Review.where(:user_id=>@user.id) 

  end



private
# Use callbacks to share common setup or constraints between actions.
def set_workout
  @workout = Workout.find(params[:id])
end

# Only allow a list of trusted parameters through.
def workout_params
  params.require(:workout).permit(:workout, :summary)
end
end
