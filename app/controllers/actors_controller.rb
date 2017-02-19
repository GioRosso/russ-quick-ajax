class ActorsController < ApplicationController

  def index
    @glumci = Actor.all
  end

  def new
    @glumac = Actor.new
  end

  def create
    Actor.create(actor_parameters)
    flash[:notice] = "Actor has been added!"
    redirect_to root_path
  end

  def destroy
    delact = Actor.find(params[:id])
    delact.destroy
    flash[:notice] = "Actor has been deleted!"
    redirect_to root_path
  end

  private

  def actor_parameters
    params.require(:actor).permit(:firstname, :lastname)
    # :actor being controller/db:table name
    # :firstname, :lastname being column names in db:table
  end

end
