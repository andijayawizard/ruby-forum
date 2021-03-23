class StudentsController < ApplicationController
  def object_params
    params.require(:student).permit(:name, :nim, :email, :phone, :address)
  end

  def current_student
    Student.find params[:id]
  end

  def index
    @title = 'Siswa'
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def edit
    @student = Student.find(params[:id])
  end
  def new
    @student = Student.new
  end
  def create
    @object = Student.new(object_params)
    if @object.save
      redirect_to students_path, notice: "Siswa #{@object.name} berhasil disimpan"
    else
      render 'new'      
    end
  end
  def update
    @student = current_student
    if @student.update object_params
      redirect_to students_path, notice: 'Berhasil memperbarui data siswa'
    else
      render 'edit'
    end
  end
  def destroy
    @student = current_student
    @student.destroy
    redirect_to students_path, notice: 'Berhasil menghapus data siswa'
  end
end
