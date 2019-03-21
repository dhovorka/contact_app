class ContactsController < ApplicationController

  def index
    @person = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def show
    @person = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    @person = Contact.new(
      first_name: params[:first_name]
      last_name: params[:last_name]
      middle_name: params[:middle_name]
      phone_number: params[:phone_number]
      email: params[:email]
      bio: params[:bio]
      )
    @person.save
    render "show.html.erb"
  end
end
