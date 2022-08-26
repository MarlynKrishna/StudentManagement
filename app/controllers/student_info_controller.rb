class StudentInfoController < ApplicationController
  def show
  
  end

  def index
    @student_infos= StudentInfo.where(user_id:session[:user_id])
  end
  def create
    @student =Studnet.find(params[:student_info][:student_id])
    
   
  end
  # @student= Student.new(student_id: student.id,first_name: student.first_name, last_name: student.last_name, department: student.department, course: student.course, Fee: student.Fee, phone_number: student.phone_number)
  # @student.save
  private
  def info_params
    params.require(:student_info).permit(:user_id,:first_name, :last_name, :department, :course, :phone_number, :Fee, :student_id)
  end
 

end
