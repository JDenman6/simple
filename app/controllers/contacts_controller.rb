class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thanks for the note!'
    else
      flash.now[:error] = 'Whoops. Something went wrong.'
      render :new
    end
  end
end
