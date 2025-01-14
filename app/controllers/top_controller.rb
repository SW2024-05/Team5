class TopController < ApplicationController
def login
    @school=School.all
end

def find
   student = Student.find_by(student_name: params[:student_name])
   redirect_to "/top/#{student.id}"
end

def show
    @student = Student.find(params[:id])
    @fitting = Fitting.find(@student.fitting.id) 
end

end
