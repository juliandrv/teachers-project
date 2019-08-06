class TeachersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :is_student?, only: [:index, :show]
  before_action :is_teacher?, only: [:update, :edit, :destroy, :show]
  #before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    @teacher.user.update!(role: :teacher)

      if @teacher.save
        redirect_to teacher_path(@teacher), notice: 'Teacher was successfully created.'
      else
        flash[:alert] = "Teacher not saved."
        render :new
      end
    end

  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_teacher
    #  @teacher = Teacher.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:type_id, :name, :phone)
    end

    def is_student?
      unless current_user.student?
        redirect_to root_path, alert: "You don't have permissions"
      end
    end


    def is_teacher?
      unless current_user.teacher?
        redirect_to root_path, alert: "You don't have permissions"
      end
    end
end
