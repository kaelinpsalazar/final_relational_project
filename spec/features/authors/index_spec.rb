require 'rails_helper'

RSpec.describe 'Authors index page', type: :feature do
  before(:each) do
    @brandon_sanderson = Author.find_or_create_by(name: 'Brandon Sanderson', deceased: false, age: 47)
    @robert_jordan = Author.find_or_create_by(name: 'Robert Jordan', deceased: false, age: 56)
  end

  it 'displays each author with their details' do
    visit authors_path

    expect(page).to have_content(@brandon_sanderson.name)
    expect(page).to have_content(@robert_jordan.name)
  
  end
end