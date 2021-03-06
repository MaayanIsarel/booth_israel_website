class RankingsController < ApplicationController

  def index
    @rankings = Ranking.all
  end

  def show
    @ranking = Ranking.find(params[:id])
  end

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new
    @ranking.link = params[:link]
    @ranking.year = params[:year]
    @ranking.rank = params[:rank]
    @ranking.report_name = params[:report_name]

    if @ranking.save
      redirect_to "/rankings", :notice => "Ranking created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ranking = Ranking.find(params[:id])
  end

  def update
    @ranking = Ranking.find(params[:id])

    @ranking.link = params[:link]
    @ranking.year = params[:year]
    @ranking.rank = params[:rank]
    @ranking.report_name = params[:report_name]

    if @ranking.save
      redirect_to "/rankings", :notice => "Ranking updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ranking = Ranking.find(params[:id])

    @ranking.destroy

    redirect_to "/rankings", :notice => "Ranking deleted."
  end
end
