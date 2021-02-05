class BookersController < ApplicationController
  def index
    @bookers = Booker.all
  end

  def show
    @bookers = Booker.find(params[:id])
  end

  def new
    @bookers = Booker.new
  end
  
  def create
    @bookers = Booker.new
    if @bookers.save
       redirect_to bookers_path , notice: "succese"
    else
       flash[:alert] = 'Save error!'
    end
  end

  def edit
  end
  
  # private
  # def bookers_params
  #   params.require(:bookers).permit(:title, :body)
  # end
end
