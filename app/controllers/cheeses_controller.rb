class CheesesController < ApplicationController

  # GET /cheeses
  # only inlcudes attributes you named 
  # except will exclude attributes you indicate 
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name], methods: [:summary]
  end

  # GET /cheeses/:id
  # custome error message 
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese 
      render json: cheese
    else 
      render json: {error: "Cheese not found"}, status: 404 
    end 
  end 
  

end
