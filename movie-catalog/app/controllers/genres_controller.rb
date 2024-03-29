class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end
    def new
        @genre = Genre.new
    end
    def create
        @genre = Genre.new(name: params[:genre][:name])

        if @genre.save
            flash.notice = "Genre created successfully"
            return redirect_to new_genre_path
        end

        render :new
    end
    def edit
        @genre = Genre.find(params[:id])
    end
    def update
        genre = Genre.find(params[:id])
        if genre.update(name: params[:genre][:name])
            return redirect_to genres_path
        end

        render :edit
    end
    def destroy
        genre = Genre.find(params[:id])
        genre.destroy
        redirect_to genres_path, notice: "Genre #{genre.name} deleted successfully" 
    end
end