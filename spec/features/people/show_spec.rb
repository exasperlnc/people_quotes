require 'rails_helper'

RSpec.describe Person do
  before(:each) do
    @person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
  end
  it "displays the persons name" do
    visit "/people/#{@person.id}"
  end

  it "displays the persons DOB" do
    visit "/people/#{@person.id}"
    expect(page).to have_content("2005-10-10")
  end

  it "displays if the person is deceased" do
    visit "/people/#{@person.id}"
    
    expect(page).to have_content(@person.deceased)
  end
end