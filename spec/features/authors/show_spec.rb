require 'rails_helper'

RSpec.describe "Author's show page" do
  it "displays the author's name" do
    author = Author.create!(name: "Brandon Sanderson", age: 47, deceased: false)
    
    visit author_path(author)
    
    expect(page).to have_content(author.name)
    expect(page).to have_content(@book.title)

  end
end