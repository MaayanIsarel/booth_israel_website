class AlumnisController < ApplicationController
  before_action :authenticate_user, only: [ :edit, :update, :destroy]

def authenticate_user
  a_user_id =  Alumni.find(params[:id]).user_id
  if current_user.blank? || (a_user_id != current_user.id) && (current_user.admin !=true)
    redirect_to "/", :alert => "You are not authorized"
  end
end



  def index
    @q = Alumni.ransack(params[:q])
    @alumnis = @q.result
  end

  def show
    @alumni = Alumni.find(params[:id])
  end

  def new
    @alumni = Alumni.new
  end

  def create
    @alumni = Alumni.new
    @alumni.display_nothing = params[:display_nothing]
    @alumni.display_linkedin = params[:display_linkedin]
    @alumni.display_email = params[:display_email]
    @alumni.display_location = params[:display_location]
    @alumni.display_phone = params[:display_phone]
    @alumni.user_id = params[:user_id]
    @alumni.name = params[:name]
    @alumni.classof = params[:classof]
    @alumni.user_type = params[:user_type]
    @alumni.current_employer = params[:current_employer]
    @alumni.past_employers = params[:past_employers]
    @alumni.current_location = params[:current_location]
    @alumni.booth_email = params[:booth_email]
    @alumni.home_email = params[:home_email]
    @alumni.linkedin = params[:linkedin]
    @alumni.phone = params[:phone]
    @alumni.program = params[:program]

    if @alumni.save
      redirect_to "/alumnis", :notice => "Alumni created successfully."
    else
      render 'new'
    end
  end

  def edit
    @alumni = Alumni.find(params[:id])
  end

  def update
    @alumni = Alumni.find(params[:id])

    @alumni.display_nothing = params[:display_nothing]
    @alumni.display_linkedin = params[:display_linkedin]
    @alumni.display_email = params[:display_email]
    @alumni.display_location = params[:display_location]
    @alumni.display_phone = params[:display_phone]
    @alumni.user_id = params[:user_id]
    @alumni.name = params[:name]
    @alumni.classof = params[:classof]
    @alumni.user_type = params[:user_type]
    @alumni.current_employer = params[:current_employer]
    @alumni.past_employers = params[:past_employers]
    @alumni.current_location = params[:current_location]
    @alumni.booth_email = params[:booth_email]
    @alumni.home_email = params[:home_email]
    @alumni.linkedin = params[:linkedin]
    @alumni.phone = params[:phone]
    @alumni.program = params[:program]

    @alumni.save
      redirect_to "/alumnis", :notice => "Alumni updated successfully."
  end

  def destroy
    @alumni = Alumni.find(params[:id])

    @alumni.destroy

    redirect_to "/alumnis", :notice => "Alumni deleted."
  end
end
