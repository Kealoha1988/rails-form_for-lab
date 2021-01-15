class SchoolClassController < ApplicationController

  def new
    @student_class = StudentClass.new
  end

  def create
    @student_class = StudentClass.new(class_params)
    @student_class.save
    redirect_to student_class_path
  end


  def show
    @student_class = StudentClass.find_by_id(params[:id])
  end

  def edit
    @student_class = StudentClass.find_by_id(params[:id])
  end

  def update
    @student_class = StudentClass.new(class_params)
    @student_class.update(class_params)
    redirect_to student_class_path(@student_class)
  end


  private

  def class_params(args)
    params.require(:student_class).permit(args)
  end

end