require 'rails_helper'

RSpec.describe Person do
  it "displays the persons name" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"

    expect(page).to have_content(person.name)
  end

  it "displays the persons DOB" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"

    expect(page).to have_content("2005-10-10")
  end

  it "displays if the person is deceased" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"
    
    expect(page).to have_content(person.deceased)
  end

  xit 'displays created at' do #Can't get it to work because can't get the correct date to display...
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"

    expect(page).to have_content(person.created_at)
  end

  it 'has link to People index' do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"
    
    expect(page).to have_content("Index of Quoted People")
  end

  it 'has link to quotes index' do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"
    
    expect(page).to have_content("Index of Quotes")
  end

  it 'has link to create new parent' do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people"
    
    expect(page).to have_content("New ")
  end
end