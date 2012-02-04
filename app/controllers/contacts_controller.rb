class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      @contact.save!
      ContactMailer.contact_us(@contact).deliver!
      redirect_to root_path, :notice => "We have received your email and will be in touch soon."
    else
      render :new
    end
  end
end
