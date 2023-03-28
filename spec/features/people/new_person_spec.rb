require 'rails_helper'

RSpec.describe "create Person" do
  before(:each) do
    @person = Person.create(name: "Jacob", deceased: false, birthday: 20000101)
  end

  it "links to the create page" do
    visit '/people'

    click_link "New Person"

    expect(current_path).to eq("/people/new")
  end

  it "creates new artist" do
    visit '/people/new'
    save_and_open_page

    fill_in('Name', with: 'Finn')
    check('Deceased')
    fill_in('birthday', with: 2015-10-10)

    click_button('Create Person')

    expect(current_path).to eq("/people")
    expect(page).to have_content(Finn)
  end
end