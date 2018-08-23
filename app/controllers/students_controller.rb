class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def edit
<<<<<<< HEAD
    @student = Student.find_by_id(params[:id])
=======
    @student = SchoolClass.find_by_id(params[:id])
>>>>>>> b831f6ba4039952b03660e35411c593fdb2ae58d
  end

  def update
    @student = Student.find_by_id(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
