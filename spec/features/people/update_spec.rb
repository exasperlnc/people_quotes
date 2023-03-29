require 'rails_helper'

RSpec.describe "update person" do
  before(:each) do
    @person = Person.create!(name: "Jacob", deceased: false, birthday: 20000101, clicks: 0)
  end

  it "links to the create page" do
    visit "/people/#{@person.id}"

    click_link "Update Person"

    expect(current_path).to eq("/people/#{@person.id}/update")
  end

  it "updates person" do
    visit "/people/#{@person.id}/update"
    save_and_open_page

    fill_in('Name', with: 'Jimothy')
    #not sure how to deal with checkbox still
    fill_in('birthday', with: 10-10-2005)

    click_button('Update Person')

    expect(current_path).to eq("/people")
    expect(page).to have_content("Jimothy")
  end
end