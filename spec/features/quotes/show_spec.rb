require 'rails_helper'

RSpec.describe Quote do
  it "displays the quote text" do
    person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)

    visit "/quotes/#{quote.id}"

    expect(page).to have_content(quote.text)
  end

  it "displays the date quote recorded" do
    person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes/#{quote.id}"
    
    expect(page).to have_content("1996-04-01")

  end

  it "displays the quote's person" do
    person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes/#{quote.id}"
    expect(page).to have_content(quote.person_id)
  end

  it 'has link to People index' do
    person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes/#{quote.id}"
    
    expect(page).to have_content("Index of Quoted People")
  end

  it 'has link to quotes index' do
    person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes/#{quote.id}"
    
    expect(page).to have_content("Index of Quotes")
  end
end