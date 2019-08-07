class TutoringsController < ApplicationController
before_action :authenticate_user!
before_action :validate_student, only: [:new]


  def show
  end

  def new
    @tutoring = Tutoring.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private 
    def validate_student
      unless current_user.student?
        redirect_to root_path, alert: "You don't have permissions. You should be a student."
      end
      
    end
end
