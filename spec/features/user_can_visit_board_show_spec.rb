require 'rails_helper'

describe "individual board page" do
  it "has selected board form index page" do
    visit '/'

    click_on('Create New Board')
    expect(page).to have_content('Please include a title for your new board')

    fill_in "board[title]", with: "Example Board"
    click_on("Submit")

    click_on "Example Board"
    expect(page).to have_content("Project: Example Board")
  end
end
