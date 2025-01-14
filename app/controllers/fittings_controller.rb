class FittingsController < ApplicationController
  def edit
    @fitting = Fitting.find(params[:id])
    @student = Student.find(@fitting.student.id)
    @product = Product.all
  end
  
  def update
    fitting =Fitting.find(params[:id])
    student = Student.find(fitting.student.id)
    student.update(product_id: params[:fitting][:product_id])
    fitting.update(
      height: params[:fitting][:height], weight: params[:fitting][:weight],
      neck_round: params[:fitting][:neck_round], shoulder_width: params[:fitting][:shoulder_width],
      chest_size: params[:fitting][:chest_size], sleeve_length: params[:fitting][:sleeve_length],
      west: params[:fitting][:west], hip: params[:fitting][:hip],
      foot_length: params[:fitting][:foot_length]
      )
    fitting.save
    redirect_to "/students/#{fitting.student.id}"
  end
  
end
