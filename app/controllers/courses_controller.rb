class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def create 
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      Rails.logger.info @course.errors.full_messages
      flash[:notice]= @course.errors.full_messages
      redirect_to new_course_path
    end
  end
  def new
    @course = Course.new
  end

  def show
  end
  def update
    course = current_account.course.find(params[:id])
    course.update!(course_params)
    redirect_to course
  end
  def edit
  end
  private 
  def course_params 
    params.require(:course).permit(:name, :description,:fee, :starting_date, :ending_date)
  end
end
