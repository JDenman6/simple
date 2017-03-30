class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    flash[:notice] = 'The contacts page no longer exists. Have a nice day!'
    redirect_to '/pages/main'
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Thanks for the note!'
      redirect_to '/pages/main'
    else
      flash[:error] = 'Whoops. Something went wrong. Please try to submit that feedback again.'
      redirect_to '/pages/main'
    end
  end
end
