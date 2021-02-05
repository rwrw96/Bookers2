class BookersController < ApplicationController
  def index
    @bookers = Booker.all
  end

  def show
    @bookers = Booker.find(params[:id])
  end

  def new
    @bookers = Booker.new
    @bookres = Booker.all
  end
  
  def create
    @bookers = Booker.new(bookers_params)
    @bookers.save
    if @bookers.save
      redirect_to "/bookers/new" , notice: "succese"
    else
      flash[:alert] = 'Save error!'
    end
  end

  def edit
  end
  
  private
  def bookers_params
    params.permit(:title, :body)
  end
end
