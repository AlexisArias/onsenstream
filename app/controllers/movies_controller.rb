class MoviesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
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
    @movie = Movie.new(movie_params)
    if @movie.save
        redirect_to @movie
    else
        render 'new'
    end
end

def edit
    @movie = Movie.find(params[:id])
end

def update
    @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to @movie
        else
            render 'edit'
        end
end

        def destroy
            @movie = Movie.find(params[:id])
            @movie.destroy
            redirect_to root_path
        end

    private

def movie_params
    params.require(:movie).permit(:title, :genre, :director, :year, :description, :casting, :duration, :trailer, :image, :plateform)
end
end
