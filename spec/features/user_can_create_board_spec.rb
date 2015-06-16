require 'rails_helper'

describe "board" do
  it "can be created by user" do
    visit '/'

    click_on('Create New Board')
    expect(page).to have_content('Please include a title for your new board')

    count = Board.count

    fill_in "board[title]", with: "Example Board"
    click_on("Submit")

    expect(Board.count).to eq(count + 1)
  end
end
