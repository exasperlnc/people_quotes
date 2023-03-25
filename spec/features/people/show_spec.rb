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

  it 'shows count of associated quotes' do
    quote = @person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = @person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{@person.id}"

    expect(page).to have_content("Quotes: 2")
  end

  it 'has link to People index' do
    quote = @person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = @person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{@person.id}"
    
    expect(page).to have_content("Index of Quoted People")
  end

  it 'has link to quotes index' do
    quote = @person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = @person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{@person.id}"
    
    expect(page).to have_content("Index of Quotes")
  end
end