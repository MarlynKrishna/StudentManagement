class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def current_student
    @current_student = student.find(session[:student_id]) if session[:student_id]
  end
  helper_method :current_student
end
