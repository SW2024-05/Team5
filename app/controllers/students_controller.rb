class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
    @fitting = Fitting.find(@student.fitting.id)
  end
  
  def new
      @student = Student.new
      @school = School.all
      @product = Product.all
  end

  def create
    fitting = Fitting.new()
    fitting.save
    
    @student = Student.new(
      student_name: params[:student][:student_name] ,
      product_id: nil ,
      fitting_id: fitting.id
      )

    # 新しい学校が入力された場合、その学校を保存し、studentに紐付ける
    if params[:student][:school_name].present? && params[:student][:school_id].blank?
      school = School.create(school_name: params[:student][:school_name], school_grade: params[:student][:school_grade])
      @student.school_id = school.id
    else
      @student.school_id = params[:student][:school_id]
    end

    if @student.save
      redirect_to @student, notice: "学生が正常に作成されました"
    else
      render :new
    end
  end

  def upload_csv
    @school = School.all
  end
  
  def import
    if params[:school_name].present? && params[:school_id].blank?
      school = School.create(school_name: params[:school_name], school_grade: params[:school_grade])
      school_id = school.id
    else
      school_id = params[:school_id]
    end
    
    Student.import(params[:file],school_id)
    redirect_to students_path
  end
  
  def search
    @school = School.all
  end
  
  def find
    student = Student.find_by(student_name: params[:student_name])
    redirect_to "/students/#{student.id}"
    # redirect_to students_path
  end
  
  private

  def student_params
    params.require(:student).permit(:student_name, :school_id, :school_name, :school_grade, :product_id)
  end
  
  
end
