class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
  
    if @contact.save
      flash[:success] = 'Message sent! you are a fucking genius'
      redirect_to new_contact_path 
    else
      flash[:danger] = "You fucked up somewhere"
      redirect_to new_contact_path 
    end 
  end
  
  private
   def contact_params
     params.require(:contact).permit(:name, :email, :comments)
   end
end