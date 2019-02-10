class StudentsController < ApplicationController

  def index
    if user_signed_in?
      if current_user.admin?
        @students = Student.all
      elsif current_user.student?
        @student = current_user.student
      end
    end
  end

  def new
    @user = current_user
    @student = Student.create(student_params)
  end


  private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :semester, :age, :phone_number, :address)
    end
end
