class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by_id(params[:id])
  end

  def new

  end

  def create
    d = Director.new
    d.dob = params[:dob]
    d.name = params[:name]
    d.save

    redirect_to directors_url

  end

  def edit
    @director = Director.find_by_id(params[:id])

  end

  def update
    d = Director.find_by_id(params[:id])
    d.name = params[:name]
    d.dob = params[:dob]
    d.save

    redirect_to directors_url

  end

  def destroy
    d = Director.find_by_id(params[:id])
    d.destroy

    redirect_to directors_url
  end

end
