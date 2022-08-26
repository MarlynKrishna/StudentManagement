class SessionsController < ApplicationController
  def new
  end

  def create
    @student = Student.find_by_first_name(params[:name])
    if @student && @student.authenticate(params[:password])
      session[:student_id] = @student.id
      flash[:notice]="Login successful"
      redirect_to '/userIndex'
    else
      Rails.logger.info @student.errors.full_messages
      flash[:notice]= @student.errors.full_messages
      redirect_to '/signup'
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
