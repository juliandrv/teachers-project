class TutoringsController < ApplicationController
  def index
    @tutorings = Tutoring.all
  end

  def show
  end

  def new
    @tutoring = Tutoring.new
  end

  def edit
  end

  def create
    @tutoring = Tutoring.new(tutoring_params)
    @tutoring.user = current_user
    @tutoring.user.update!(role: :tutoring)

      if @tutoring.save
        redirect_to tutoring_path(@tutoring), notice: 'Teacher was successfully created.'
      else
        flash[:alert] = "Teacher not saved."
        render :new
      end
    end
  end

  def update
  end

  def destroy
  end
end
