require 'rails_helper'

RSpec.describe Person do
  before(:each) do
    @person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
  end
end