class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    def show
        @movie = Movie.find(params[:id])
    end
    def new
        @movie = Movie.new
    end
    def create
        items = params[:movie]
        @movie = Movie.new(title: items[:title], release_date: items[:release_date], synopsis: items[:synopsis], duration: items[:duration], director_id: items[:director_id], genre_id: items[:genre_id])

        if @movie.save
            return redirect_to movies_path, notice: 'Movie created successfully'
        end

        render :new
    end
    def edit
        @movie = Movie.find(params[:id])
    end
    def update
        items = params[:movie]
        @movie = Movie.find(params[:id])
        @movie.update(title: items[:title], release_date: items[:release_date], synopsis: items[:synopsis], duration: items[:duration], director_id: items[:director_id], genre_id: items[:genre_id])

        if @movie.save
            return redirect_to movies_path, notice: 'Movie updated successfully'
        end

        render :edit
    end
    def destroy
        movie = Movie.find(params[:id])
        if movie.destroy
            return redirect_to movies_path, notice: 'Movie deleted successfully'
        end

        render :show
    end
end