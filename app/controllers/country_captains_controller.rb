class CountryCaptainsController < ApplicationController
  def index
    @country_captains = CountryCaptain.all
  end

  def show
    @country_captain = CountryCaptain.find(params[:id])
  end

  def new
    @country_captain = CountryCaptain.new
  end

  def create
    @country_captain = CountryCaptain.new
    @country_captain.ask_me = params[:ask_me]
    @country_captain.summer_internship = params[:summer_internship]
    @country_captain.previous_industry = params[:previous_industry]
    @country_captain.linkedin = params[:linkedin]
    @country_captain.email = params[:email]
    @country_captain.undergrad = params[:undergrad]
    @country_captain.picture = params[:picture]
    @country_captain.name = params[:name]

    if @country_captain.save
      redirect_to "/country_captains", :notice => "Country captain created successfully."
    else
      render 'new'
    end
  end

  def edit
    @country_captain = CountryCaptain.find(params[:id])
  end

  def update
    @country_captain = CountryCaptain.find(params[:id])

    @country_captain.ask_me = params[:ask_me]
    @country_captain.summer_internship = params[:summer_internship]
    @country_captain.previous_industry = params[:previous_industry]
    @country_captain.linkedin = params[:linkedin]
    @country_captain.email = params[:email]
    @country_captain.undergrad = params[:undergrad]
    @country_captain.picture = params[:picture]
    @country_captain.name = params[:name]

    if @country_captain.save
      redirect_to "/country_captains", :notice => "Country captain updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @country_captain = CountryCaptain.find(params[:id])

    @country_captain.destroy

    redirect_to "/country_captains", :notice => "Country captain deleted."
  end
end
