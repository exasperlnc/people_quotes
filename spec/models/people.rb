require 'rails_helper'

RSpec.describe Person do
    it {should have_many :quotes}

  it 'checks clicks' do
    person = Person.create!(name: 'Matt S', deceased: false, birthday: 19931010, clicks: 0)

    person.increase_clicks

    expect(person.clicks).to eq(1)
  end

  it 'sorts quotes' do
    person = Person.create!(name: 'Matt S', deceased: false, birthday: 19931010, clicks: 0)
    quote = person.quotes.create(text: 'a', recorded: 20230101, clicks: 0)
    quote2 = person.quotes.create(text: 'b', recorded: 20230101, clicks: 0)
    quote3 = person.quotes.create(text:'d', recorded: 20230101, clicks: 0)
    quote4 = person.quotes.create(text: 'c', recorded: 20230101, clicks: 0)

    expect(person.sort_quotes_alphabetically).to eq([quote, quote2, quote4, quote3])
  end
end