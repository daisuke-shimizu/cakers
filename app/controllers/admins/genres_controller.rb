class Admins::GenresController < ApplicationController
    def index
        @genres = Genre.all
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to admins_genres_path
    end

    def update
    end

    private
    def genre_params
        params.require(:genre).permit(:title)
    end
    
end
