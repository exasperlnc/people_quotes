require 'rails_helper'

RSpec.describe Person do
    it {should have_many :quotes}

  it 'checks clicks' do
    person = Person.create!(name: 'Matt S', deceased: false, birthday: 19931010, clicks: 0)

    person.increase_clicks

    expect(person.clicks).to eq(1)
  end
end