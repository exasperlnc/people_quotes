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

    expect(page).to have_content("Index of Quotes")
  end

  it 'sorts quotes alphabetically' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101, clicks: 0)
    quote = person.quotes.create(text: 'a', recorded: 20230101, clicks: 0)
    quote2 = person.quotes.create(text: 'b', recorded: 20230101, clicks: 0)
    quote3 = person.quotes.create(text:'d', recorded: 20230101, clicks: 0)
    quote4 = person.quotes.create(text: 'c', recorded: 20230101, clicks: 0)

    visit "/people/#{person.id}/quotes"
    save_and_open_page
    
  end
end