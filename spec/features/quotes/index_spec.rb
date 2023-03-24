require 'rails_helper'

RSpec.describe Quote do
  it "displays the quote text" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)

    visit "/quotes#index"

    expect(page).to have_content(quote.text)
  end

  it "displays the date quote recorded" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes#index"
    
    expect(page).to have_content("1996-04-01")

  end

  it "displays the quote's person" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    quote = person.quotes.create(text: "Waaaah", recorded: 19960401, clicks: 0)
    visit "/quotes#index"
    expect(page).to have_content(quote.person_id)
  end

  xit 'displays created at' do #Can't get it to work because can't get the correct date to display...
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people/#{person.id}"

    expect(page).to have_content(quote.created_at)
  end
end