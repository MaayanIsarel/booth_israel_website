class RegistrationForMailingListsController < ApplicationController
  def index
    @registration_for_mailing_lists = RegistrationForMailingList.all
  end

  def show
    @registration_for_mailing_list = RegistrationForMailingList.find(params[:id])
  end

  def new
    @registration_for_mailing_list = RegistrationForMailingList.new
  end

  def create
    @registration_for_mailing_list = RegistrationForMailingList.new
    @registration_for_mailing_list.class_of = params[:class_of]
    @registration_for_mailing_list.phone = params[:phone]
    @registration_for_mailing_list.email = params[:email]
    @registration_for_mailing_list.current_company = params[:current_company]
    @registration_for_mailing_list.current_industry = params[:current_industry]
    @registration_for_mailing_list.full_name = params[:full_name]

    if @registration_for_mailing_list.save
      redirect_to "/", :notice => "Registration to mailing list was successfull."
    else
      render 'new'
    end
  end

  def edit
    @registration_for_mailing_list = RegistrationForMailingList.find(params[:id])
  end

  def update
    @registration_for_mailing_list = RegistrationForMailingList.find(params[:id])

    @registration_for_mailing_list.class_of = params[:class_of]
    @registration_for_mailing_list.phone = params[:phone]
    @registration_for_mailing_list.email = params[:email]
    @registration_for_mailing_list.current_company = params[:current_company]
    @registration_for_mailing_list.current_industry = params[:current_industry]
    @registration_for_mailing_list.full_name = params[:full_name]

    if @registration_for_mailing_list.save
      redirect_to "/registration_for_mailing_lists", :notice => "Registration for mailing list updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @registration_for_mailing_list = RegistrationForMailingList.find(params[:id])

    @registration_for_mailing_list.destroy

    redirect_to "/registration_for_mailing_lists", :notice => "Registration for mailing list deleted."
  end
end
