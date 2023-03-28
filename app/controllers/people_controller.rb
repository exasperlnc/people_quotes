class PeopleController < ApplicationController
  def index
    @people = Person.all.order('created_at DESC')
  end

  def new
  end

  def show
    @person = Person.find(params[:id])
  end

  def quote_index
    @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])
    person = Person.create(name: params[:name])
  end

  def person_params
    params.permit(:name, :deceased, :birthday)
  end

  def create
    person = Person.create(params[:name, :deceased, :birthday])
    redirect_to "/people"
  end
end