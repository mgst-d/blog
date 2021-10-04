class ContactsController < ApplicationController
  def new
  end
  def create
    @c = Contact.new contact_params
    if @c.valid?
      @c.save
    else
      render action: 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
