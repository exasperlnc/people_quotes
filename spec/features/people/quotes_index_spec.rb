require 'rails_helper'

RSpec.describe Person do
  it 'shows quote text' do
    person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
    quote = person.quotes.create(text: "It really do be like that sometimes", recorded:20051010, clicks: 0)
    quote2 = person.quotes.create(text: "fr", recorded: 20230101, clicks: 0)
    visit "/people/#{person.id}/quotes"
  end

  xit 'shows quote date recorded' do
    
  end
end