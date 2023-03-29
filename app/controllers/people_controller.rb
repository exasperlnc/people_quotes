class PeopleController < ApplicationController
  def index
    @people = Person.all.order('created_at DESC')
  end

  def new
  end

  def show
    @person = Person.find(params[:id])
    @person.increase_clicks
  end

  def quote_index
    @person = Person.find(params[:id])
  end
  
  def update
    # @person = Person.find(params[:id]) Why shouldn't I have this here? Lol
    person = Person.update(person_params)
    # redirect_to "/people"
  end

  def person_params
    params.permit(:name, :deceased, :birthday)
  end

  def create
    person = Person.create(person_params)
    redirect_to "/people"
  end
end