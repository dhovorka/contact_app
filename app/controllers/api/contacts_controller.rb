class Api::ContactsController < ApplicationController
  
  def index
    @person = Contact.all
    render "index.json.jbuilder"
  end

  def show
    @person = Contact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @person = Contact.find_by(id: params[:id])
    @person.first_name = params[:first_name] || @person.first_name
    @person.last_name = params[:last_name] || @person.last_name
    @person.email = params[:email] || @person.email
    @person.phone_number = params[:phone_number] || @person.phone_number
    if @person.save
      render "show.json.jbuilder"
    else render json: {errors: @person.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def create
    @person = Contact.new
    @person.first_name = params[:first_name]
    @person.last_name = params[:last_name]
    @person.email = params[:email]
    @person.phone_number = params[:phone_number]
    if @person.save
      render "show.json.jbuilder"
    else render json: {errors: @person.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Contact.find_by(id: params[:id])
    @person.destroy
    render "destroy.json.jbuilder"
  end
end
