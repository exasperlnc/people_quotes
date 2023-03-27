class PeopleController < ApplicationController
  def index
    @people = Person.all
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
    params.permit(:name, :deceased, :birthdayn )
  end
end