class BookersController < ApplicationController
  def index
    @bookers = Booker.all
  end

  def show
    @bookers = Booker.find(params[:id])
  end

  def new
    @booker = Booker.new
  end
  
  def create
    bookers = Booker.new(bookers_params)
    bookers.save
    redirect_to bookers_path
  end

  def edit
  end
  
  private
  def bookers_params
    params.permit(:title, :body)
  end
end
