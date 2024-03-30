class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end
  def show
    @director = Director.find(params[:id])
    @movies = Movie.where(director_id: @director.id)
  end
  def new
    @director = Director.new
  end
  def create
    items = params[:director]
    @director = Director.new(name: items[:name], born_in: items[:born_in], nationality: items[:nationality], genre_id: items[:genre])

    if @director.save
      return redirect_to directors_path, notice: "Director created successfully"
    end

    render :new
  end
  def edit
    @director = Director.find(params[:id])
  end
  def update
    items = params[:director]
    @director = Director.find(params[:id])
    @director.update(name: items[:name], born_in: items[:born_in], nationality: items[:nationality], genre_id: items[:genre])
    redirect_to directors_path, notice: "Director updated successfully"
  end
  def destroy
    director = Director.find(params[:id])
    director.destroy
    redirect_to directors_path, notice: "Director #{director.name} deleted successfully"
  end
end