class ContactsController < ApplicationController
  before_action :parent
  
  def new
    @contact = Contact.new
  end
  
  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render :new
    end
  end
  
  def back
    @contact = Contact.new(contact_params)
    render :new
  end
  
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      #ContactMailer.send_mail(@contact).deliver_now
      redirect_to contacts_thanks_path
    else
      render :new
    end
  end
  
  def thanks
  end
  
  private

  def contact_params
    params.require(:contact).permit(:name, :message)
  end
  

end

