class SubscribersController < ApplicationController
  
  def new
    @subscriber = Subscriber.new
  end
  
  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      # Mailer code goes here
      redirect_to root_path, :notice => "Got it! We will keep you informed about the Liberty campaign."
    else
      render informed_path
    end
  end
end
