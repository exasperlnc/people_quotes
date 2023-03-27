require 'rails_helper'

RSpec.describe Person do
  it 'shows quote text' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
    quote = person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{person.id}/quotes"

    expect(page).to have_content(quote.text)
  end

  it 'shows quote date recorded' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
    quote = person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{person.id}/quotes"

    expect(page).to have_content("2005-10-10")
  end

  it 'has link to People index' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
    quote = person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{person.id}/quotes"

    expect(page).to have_content("Index of Quoted People")
  end

  it 'has link to quotes index' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
    quote = person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{person.id}/quotes"
    
    save_and_open_page
    expect(page).to have_content("Index of Quotes")
  end
end