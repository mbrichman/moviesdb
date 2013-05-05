class MoviesController < ApplicationController

  def index
    @movies = Movie.all

  end

  def show
    @movie = Movie.find_by_id(params[:id])

  end

  def new

  end

  def create
    title = params[:title]
    year = params[:year]
    director = params[:director]
    d_id = Director.find_or_create_by_name(:name => director).id
    Movie.create(:title => title, :year => year, :director_id => d_id)

    redirect_to movies_url

  end

  def edit

  end

  def udpate
    m = Movie.find_by_id(params[:id])
    m.title = params[:title]
    m.year = params[:year]

    m.save

    redirect_to movies_url

  end

  def destroy
    m = Movie.find_by_id(params[:id])
    m.destroy

    redirect_to movies_url

  end

end
