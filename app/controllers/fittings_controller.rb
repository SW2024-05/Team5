class FittingsController < ApplicationController
  def index
    @fittings = Fitting.all
  end
  
  def new
    @fitting = Fitting.new
  end
  
  def create
    fitting = Fitting.new(
      school: params[:fitting][:school], name: params[:fitting][:name],
      height: params[:fitting][:height], weight: params[:fitting][:weight],
      neck: params[:fitting][:neck], shoulder: params[:fitting][:shoulder],
      chest: params[:fitting][:chest], sleeve: params[:fitting][:sleeve],
      west: params[:fitting][:west], hip: params[:fitting][:hip],
      foot: params[:fitting][:foot]
      )
    fitting.save
  end
  
end
