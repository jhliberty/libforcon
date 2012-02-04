class VolunteersController < ApplicationController
  
  def new
    @volunteer = Volunteer.new
  end
  
  def create
    @volunteer = Volunteer.new(params[:volunteer])
    if @volunteer.save
      redirect_to root_path, :notice => "Thank you! We will be in contact with you soon!"
    else
      render volunteer_path
    end
  end
end
