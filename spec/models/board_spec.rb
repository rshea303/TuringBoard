require 'rails_helper'

RSpec.describe Board, type: :model do
  it "is valid" do
    board = Board.new(title: "Title")

    expect(board).to be_valid
  end

  it "is not valid without a title" do
    board = Board.new(title: "")

    expect(board).not_to be_valid
  end

  it "has tickets" do
    board = Board.create(title: "Title")
    board.tickets.create(title: "new ticket", description: "desc for new ticket", status: "backlog") 

    expect(board.tickets.first.title).to eq("new ticket")
  end
end
