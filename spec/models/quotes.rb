require 'rails_helper'

RSpec.describe Quote do
    it {should belong_to :person}

  it 'checks clicks' do
    person = Person.create!(name: 'Matt S', deceased: false, birthday: 19931010, clicks: 0)
    quote = person.quotes.create!(text: "chah dude", recorded: 20051010, clicks: 0 )
    quote.increase_clicks

    expect(quote.clicks).to eq(1)
  end
end