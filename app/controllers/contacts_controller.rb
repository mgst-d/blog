class ContactsController < ApplicationController
  def new
  end
  def create
    @c = Contact.new contact_params
    @c.save
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
