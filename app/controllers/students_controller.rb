class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def create

    @student = Student.new(student_params)

    if @student.save

      flash[:notice]="Signup successful"

      redirect_to '/login'

    else

      Rails.logger.info @student.errors.full_messages
      flash[:notice]= @student.errors.full_messages

      redirect_to '/signup'

    end

  end
  def new
    @student = Student.new
  end

  # def show
  #   @students = Student.all  
  # end

  # def edit
  #   @student = Student.find_by_id(params[:id])
   
  # end 
  # def update 
  #   @student = Student.find_by_id(params[:id])
  #   @student.update(student_params)
   
  #   redirect_to student_path
   
  # end

  def destroy
  end
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :department, :email, :phone_number, :password)
    end
end
